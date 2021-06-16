function verifyOrder() {
    if(localStorage.getItem('orders') == undefined){
        location.href = './products';
    }
};

$(function() {
    verifyOrder();
});