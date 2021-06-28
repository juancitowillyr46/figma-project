getFormData = function($form){
    var unindexed_array = $form.serializeArray();
    var indexed_array = {};   
    $.map(unindexed_array, function(n, i){
        indexed_array[n['name']] = n['value'];
    });
    return indexed_array;
}

$("#frm-login").validate({
    beforeSubmit: function(arr, $form, options) {
        disabledButton("btn-login", true);
    },
    rules: {
      username: {
        required: true,
        email: true
      },
      password: {
        required: true,
        minlength: 8
      }
    },
    messages: {
      username: {
        required: "Es requerido",
        email: "Correo no válido"
      },
      password: {
        required: "Es requerido",
        minlength: "Mínimo 8 caracteres"
      }
    },
    submitHandler: function(form) {
        var body = getFormData($(form));
        var success = post('login', body);
        success.done(function(response) {
            localStorage.setItem('accessToken', response['object']['token']);
            disabledButton("btn-login", true);
            location.href = './products';
        });
        success.fail(function(response){
            alert(response.responseJSON.message);
            $('#frm-login')[0].reset();
            disabledButton("btn-login", false);
            return true;
        });
    }
});

$("#frm-register").validate({
    beforeSubmit: function(arr, $form, options) {
        disabledButton("btn-register", true);
    },
    rules: {
      fullname: {
        required: true  
      },
      city: {
        required: true
      },
      phone: {
        required: true
      },
      email: {
        required: true,
        email: true
      },
      username: {
        required: true,
        email: true
      },
      password: {
        required: true,
        minlength: 8,
        equalTo: "#passwordconfirm"
      },
      passwordconfirm: {
        required: true,
        minlength: 8
      }
    },
    messages: {
        fullname: {
            required: "Es requerido"
        },
        city: {
            required: "Es requerido"
        },
        phone: {
            required: "Es requerido"
        },
        email: {
            required: "Es requerido",
            email: "Correo no válido"
        },
        password: {
            required: "Es requerido",
            minlength: "Mínimo 8 caractéres"
        }
    },
    submitHandler: function(form) {
        var body = getFormData($(form));
        var success = post('register', body);
        success.done(function(response) {
            console.log(response);
            if(response['success']) {
                localStorage.setItem('fullname', body['fullname']);
                disabledButton("btn-register", false);
                location.href = './welcome-user';
            } else {
                alert('Existe un error');
            }
        });
        success.fail(function(response){
            alert(response.responseJSON.message);
            $('#frm-register')[0].reset();
            disabledButton("btn-register", false);
            return true;
        });
    }
});

if($("#lbl-fullname")) {
    var fullname = localStorage.getItem('fullname');
    $("#lbl-fullname").html(fullname);
}

$(function() {
    $('.toggler-wrapper-button').click(function() {
        $('.navbar-collapsex').toggle();
    });
    $(".xzoom, .xzoom-gallery").xzoom({zoomWidth: 400, title: true, tint: '#333', Xoffset: 15});
});

// $(function() {
//     $('.toggler-wrapper-button').click(function() {
//         $('.navbar-collapsex').toggle();
//     });
// });

var orderAr = {};
orderAr.header = {
    productId: 0,
    productName: '',
    productUrl: '',
    orderQuantity: 0,
    orderTotal: 0,
    orderTimeStamp: new Date().getTime(),
    detail: []
};

orderAr.detail = [];
$(document).ready(function() {

    // Resumen de la Orden de pedido
    if(localStorage.getItem('orders') != undefined) {
        var tplTable = '';
        tplTable = localStorage.getItem('orders');
        orderAr = JSON.parse(localStorage.getItem('orders'));

        const dateObject = new Date(orderAr.header.orderTimeStamp);
        const date = dateObject.toLocaleString('en-US', {month: '2-digit', day: '2-digit', year: 'numeric'});
        const dateTime = dateObject.toLocaleTimeString('en-US', {hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: true});

        $("#product-name").html(orderAr.header.productName);
        $("#product-time-register").html('Fecha: ' + date + ' Hora: ' + dateTime);

        helperJqueryClearTables();

        helperResetOrder();
    }


    var n = 0;
    var radioTalla;
    var radioColor;
    var orderQuantity = 0;
    var orderTotal = 0;

    $(document.body).on('click',"input[name='radio-talla']",function (e) { 
        radioTalla = $("input[name='radio-talla']:checked").val();
        radioColor = $("input[name='radio-color']:checked").val();
        if(radioTalla != undefined && radioColor != undefined) {
            $("#btn-add-item").prop('disabled', false);
        }
    });

    $(document.body).on('click',"input[name='radio-color']",function (e) { 
        radioTalla = $("input[name='radio-talla']:checked").val();
        radioColor = $("input[name='radio-color']:checked").val();
        if(radioTalla != undefined && radioColor != undefined) {
            $("#btn-add-item").prop('disabled', false)
        }
    });

    $(document.body).on('click',"#btn-add-item",function (e) {

        n += 1; 
        radioTalla = $("input[name='radio-talla']:checked").val();
        radioColor = $("input[name='radio-color']:checked").val();
        
        logicAddItemInOrder({
            "orderId": uuidv4(),
            "orderSize": radioTalla,
            "orderColor": radioColor,
            "orderPrice": productPrice * 1,
            "orderQuantity": 1,
            "orderSubTotal": productPrice * 1,
        });
        
        logiCalculateTotal(orderAr);

        helperJqueryClearTables();

        helperResetOrder();

    });

    $(document.body).on('change',".order-select",function (e) {
        var dataId = $(this).data("id");

        findOrder = orderAr.detail.find(f => f.orderId == dataId);
        findOrder.orderQuantity = parseInt($(this).val());
        findOrder.orderSubTotal = +(productPrice * findOrder.orderQuantity).toFixed(2);
        
        var findIndex = orderAr.detail.findIndex(f => f.orderId == dataId);
        orderAr.detail[findIndex] = findOrder;

        var subTotal = (productPrice * parseInt($(this).val()));
        $("span[id='order-total-" + dataId + "']").html(subTotal.toFixed(2));

        /* SubTotal */
        orderQuantity = 0;
        orderTotal = 0;
        orderAr.detail.forEach(item => { 
            orderQuantity += parseInt(item.orderQuantity);
            orderTotal += item.orderSubTotal;
        });

        orderAr.header.orderQuantity = orderQuantity;
        orderAr.header.orderTotal = orderTotal;

        
        var tplTotal = '';
        tplTotal += '<tr class="total">';
            tplTotal += '<td></td>';
                tplTotal += '<td align="center">Total</td>';
                    tplTotal += '<td align="center">' + orderQuantity + '</td>';   
                tplTotal += '<td></td>';
            tplTotal += '<td align="right">S/' + parseFloat(orderTotal).toFixed(2) + '</td>';
        tplTotal += '</tr>';

        $(".total").remove();
        $("table[id='orders-table']").append(tplTotal);

    });

    $(document.body).on('click',"#btn-send-order",function (e) { 
        orderAr.header.orderTimeStamp = new Date().getTime();
        orderAr.header.productId =  productId;
        orderAr.header.productName = productName;
        orderAr.header.productUrl = productUrl;
        localStorage.setItem('orders', JSON.stringify(orderAr));
        location.href = './orders';
    });

    // Resume Order
    $(document.body).on('click',"#btn-confirm-order",function (e) { 
        var success = confirm('¿Estás seguro que deseas enviar el pedido?');
        if(success) {
            var service = sendOrder(orderAr);
            service.done(function(data) {
                //var id = data['object']['header']['id'];
                location.href = './orders-thank-you';
            });
        }
    });

    $(document.body).on('click',"#btn-edit-order",function (e) { 
          location.href = './'+orderAr.header.productUrl;
    });

    


    function logicAddItemInOrder(item) {
        orderAr.detail.push(item);
    }

    function logiCalculateTotal(orderAr) {
        orderQuantity = 0;
        orderTotal = 0;
        orderAr.detail.forEach(item => { 
            orderQuantity += parseInt(item.orderQuantity);
            orderTotal += item.orderSubTotal;
        });

        orderAr.header = {
            orderQuantity: orderQuantity,
            orderTotal: orderTotal,
            productUrl: ""
        };
    }

    function helperTplOrderDetail(orderAr) {
        var tplOrder = '';
        tplOrder = '';
        orderAr.detail.forEach(item => {          
            tplOrder += '<tr class="item">';
                tplOrder += '<td align="center">'+ item.orderSize +'</td>';
                tplOrder += '<td align="center">'+ item.orderColor +'</td>';
                tplOrder += '<td align="center">';
                    tplOrder += '<div class="select-custom">';
                        tplOrder += '<select class="order-select" id="order-'+item.orderId+'" data-id="'+item.orderId+'">';
                            for(var i = 1; i <= 12; i++) {
                                tplOrder += '<option value="'+ i +'">'+ i +'</option>';
                                if(item.orderQuantity == 1) {
                                    $("select[id='order-"+ n +"'] option").val(1);
                                }
                            }
                        tplOrder += '</select>';   
                    tplOrder += '</div>';
                tplOrder += '</td>';
                tplOrder += '<td align="right">S/'+ parseFloat(item.orderPrice).toFixed(2) +'</td>';
                tplOrder += '<td align="right">S/<span id="order-total-'+item.orderId+'">'+parseFloat(item.orderSubTotal).toFixed(2)+'</span></td>';
            tplOrder += '</tr>';
        });
        return tplOrder;
    }

    function helperTplOrderTotal(orderAr) {
        var tplTotal = '';
        tplTotal += '<tr class="total">';
            tplTotal += '<td></td>';
                tplTotal += '<td align="center">Total</td>';
                    tplTotal += '<td align="center">' + orderAr.header.orderQuantity + '</td>';   
                tplTotal += '<td></td>';
            tplTotal += '<td align="right">S/' + parseFloat(orderAr.header.orderTotal).toFixed(2) + '</td>';
        tplTotal += '</tr>';
        return tplTotal;
    }

    function helperTplOrderResume(orderAr) {
        var tplOrder = '';
        tplOrder = '';
        orderAr.detail.forEach(item => {
            tplOrder += '<tr class="item">';
                tplOrder += '<td align="center">'+ item.orderSize +'</td>';
                tplOrder += '<td align="center">'+ item.orderColor +'</td>';
                tplOrder += '<td align="center">'+ item.orderQuantity +'</td>';
                tplOrder += '<td align="right">S/'+ parseFloat(item.orderPrice).toFixed(2) +'</td>';
                tplOrder += '<td align="right">S/<span id="order-total-'+item.orderId+'">'+parseFloat(item.orderSubTotal).toFixed(2)+'</span></td>';
            tplOrder += '</tr>';
        });
        return tplOrder;
    }

    function helperTplOrderResumeTotal(orderAr) {
        var orderQuantity = 0;
        var orderTotal = 0;
        orderAr.detail.forEach(item => { 
            orderQuantity += parseInt(item.orderQuantity);
            orderTotal += item.orderSubTotal;
        });

        var tplTotal = '';
        tplTotal += '<tr class="total">';
            tplTotal += '<td></td>';
                tplTotal += '<td align="center">Total</td>';
                    tplTotal += '<td align="center">' + orderQuantity + '</td>';   
                tplTotal += '<td></td>';
            tplTotal += '<td align="right">S/' + parseFloat(orderTotal).toFixed(2) + '</td>';
        tplTotal += '</tr>';
        return tplTotal;
    }

    function uuidv4() {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
          var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
          return v.toString(16);
        });
    }

    function helperJqueryClearTables() {
        $(".total, .item").remove();
        $("table[id='orders-table-resume']").append(helperTplOrderResume(orderAr));
        $("table[id='orders-table-resume']").append(helperTplOrderResumeTotal(orderAr));

        $("table[id='orders-table']").append(helperTplOrderDetail(orderAr));
        $("table[id='orders-table']").append(helperTplOrderTotal(orderAr));
    }

    function helperResetOrder() {
        $("input[name='radio-talla'],input[name='radio-color']").prop('checked', false);
        $("#btn-add-item").prop('disabled', true);

        if(orderAr.detail.length > 0) {
            $("#btn-send-order").prop('disabled', false);
        }
    }

});
