function verifyRegisterThankYou() {
    if(localStorage.getItem('fullname') == undefined){
        location.href = './';
    }
    localStorage.removeItem('fullname');
};

$(document).ready(function() { 
    verifyRegisterThankYou();
});