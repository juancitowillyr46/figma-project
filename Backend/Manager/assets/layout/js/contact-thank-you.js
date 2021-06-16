function verifyContactThankYou() {
    if(localStorage.getItem('successContact') == undefined){
        location.href = './contact';
    }
    localStorage.removeItem('successContact');
};

$(document).ready(function() { 
    verifyContactThankYou();
});