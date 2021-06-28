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
    });
    success.fail(function(response) {
        if(response) {
            localStorage.clear();
            location.href = './login';
        }
    });
});
