function verifyAccessToken() {
    if(localStorage.getItem('accessToken') != undefined){
        location.href = './products';
    }
};

$(document).ready(function() { 
    verifyAccessToken();
});