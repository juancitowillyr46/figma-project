$(function() {
    $('.toggler-wrapper-button').click(function() {
        $('.navbar-collapsex').toggle();
    });
});

var orderAr = {};
orderAr.header = {};
orderAr.detail = [];
$(document).ready(function() {

    if(localStorage.getItem('orders') != undefined) {
        var tplTable = '';
        tplTable = localStorage.getItem('orders');
        orderAr = JSON.parse(localStorage.getItem('orders'));

        orderAr.detail.forEach(item => {
            tplOrder = '';
            tplOrder += '<tr>';
                tplOrder += '<td align="center">'+ item.orderSize +'</td>';
                tplOrder += '<td align="center">'+ item.orderColor +'</td>';
                tplOrder += '<td align="center">'+ item.orderQuantity +'</td>';
                tplOrder += '<td align="right">S/'+ parseFloat(item.orderPrice).toFixed(2) +'</td>';
                tplOrder += '<td align="right">S/<span id="order-total-'+item.orderId+'">'+parseFloat(item.orderSubTotal).toFixed(2)+'</span></td>';
            tplOrder += '</tr>';
            tplBuilTr += tplOrder;
        });

        $("table[id='orders-table-resume']").append(tplBuilTr);

        orderQuantity = 0;
        orderTotal = 0;
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

        //$(".total").remove();
        $("table[id='orders-table-resume']").append(tplTotal);

        //$("#orders-table-resume").html(tplTable);
    }

    var n = 0;
    var price = 19.90 * 1;
    var tplBuilTr = '';
    var radioTalla;
    var radioColor;
    var tplOrder;
    var orderQuantity = 0;
    var orderTotal = 0;

    $(document.body).on('click',"input[name='radio-talla']",function (e) { 
        radioTalla = $("input[name='radio-talla']:checked").val();
        radioColor = $("input[name='radio-color']:checked").val();
        if(radioTalla != undefined && radioColor != undefined) {
            $("#btn-add-item").prop('disabled', false)
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
        
        tplOrder = '';
        tplBuilTr = '';


        orderAr.detail.push({
            "orderId": n,
            "orderSize": radioTalla,
            "orderColor": radioColor,
            "orderPrice": price * 1,
            "orderQuantity": 1,
            "orderSubTotal": price * 1
        });

        orderAr.detail.forEach(item => {
            tplOrder = '';
            tplOrder += '<tr>';
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
            tplBuilTr += tplOrder;
        });

        $("table[id='orders-table']").append(tplOrder);

        /* SubTotal */
        orderQuantity = 0;
        orderTotal = 0;
        orderAr.detail.forEach(item => { 
            orderQuantity += parseInt(item.orderQuantity);
            orderTotal += item.orderSubTotal;
        });

        orderAr.header = {
            "orderQuantity": orderQuantity,
            "orderTotal": orderTotal
        };

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
        
        $("input[name='radio-talla'],input[name='radio-color']").prop('checked', false);
        $("#btn-add-item").prop('disabled', true);

        if(orderAr.detail.length > 0) {
            $("#btn-send-order").prop('disabled', false);
        }

    });


    $(document.body).on('change',".order-select",function (e) {
        var dataId = $(this).data("id");

        findOrder = orderAr.detail.find(f => f.orderId == dataId);
        findOrder.orderQuantity = parseInt($(this).val());
        findOrder.orderSubTotal = +(price * findOrder.orderQuantity).toFixed(2);
        
        var findIndex = orderAr.detail.findIndex(f => f.orderId == dataId);
        orderAr.detail[findIndex] = findOrder;

        var subTotal = (price * parseInt($(this).val()));
        $("span[id='order-total-" + dataId + "']").html(subTotal.toFixed(2));

        /* SubTotal */
        orderQuantity = 0;
        orderTotal = 0;
        orderAr.detail.forEach(item => { 
            orderQuantity += parseInt(item.orderQuantity);
            orderTotal += item.orderSubTotal;
        });

        orderAr.header = {
            "orderQuantity": orderQuantity,
            "orderTotal": orderTotal
        };
        
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
        var success = confirm('¿Estas seguro que deseas enviar el pedido?');
        localStorage.setItem('orders', JSON.stringify(orderAr));
        location.href = './payment-resumen.html';
    });


    


});