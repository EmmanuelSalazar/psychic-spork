$(document).ready(function () {
    $('#formulario').click(function (e) { 
        e.preventDefault();
        var usuario = $('#usuario').val()
        var password = $('#password').val();
            if (usuario == 'admin' && password == 'admin') {
                alert('Bienvenido, Administrador :)');
                window.location.href = 'administrador.html';
            } else if (usuario == 'cliente' && password == 'cliente') {
                alert('Bienvenido denuevo ;)')
                window.location.href = 'cliente.html';
            }
    });
});