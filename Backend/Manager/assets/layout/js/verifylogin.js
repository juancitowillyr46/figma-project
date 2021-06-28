function logout(e) {
    e.preventDefault();
    var success = confirm('¿Estas seguro que deseas salir?');
    if(success) {
        localStorage.clear();
        location.href = './login';
    }
};

$(document).ready(function() {
    var success = verifyLogin({});
    success.done(function(response) { 
        $(".wrapper-menubar > ul").append('<li><a href="#" onclick="logout(event)">Cerrar sesión</a></li>');
    }).fail(function(response) {
        console.log(response);
        if(response['status'] != '') {
            localStorage.clear();
            location.href = './login';
        }
    });
});
