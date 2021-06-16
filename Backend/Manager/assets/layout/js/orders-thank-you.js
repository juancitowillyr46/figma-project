function verifyOrdersThankYou() {
    // const urlParams = new URLSearchParams(queryString);
    // const product = urlParams.get('id');
    // if(urlParams.get('id') == undefined || urlParams.get('id') == ''){
    //     location.href = './products';
    // }

    if(localStorage.getItem('orders') == undefined){
        location.href = './products';
    }
    localStorage.removeItem('orders');
};

$(document).ready(function() { 
    verifyOrdersThankYou();
});