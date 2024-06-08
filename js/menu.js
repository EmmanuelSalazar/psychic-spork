$(document).ready(function() {

    let menu = '<div class="header"><nav><h1>logo</h1><ul><li class="navItem"><a href="index.html">Inicio</a></li><li class="navItem"><a href="comprar.html">Comprar</a></li><li class="navItem"><a href="#">Contacto</a></li><li class="navItem"><a href="#">Iniciar sesión </a></li><li class="dropdown" id="dropdown"><a href="#" ><i class="material-icons">menu</i></a></li></ul></nav></div><div class="dropDownMenu" id="dropDownMenu"><ul></ul><li class="navItemDropDown"><a href="index.html">Inicio</a></li><li class="navItemDropDown"><a href="comprar.html">Comprar</a></li><li class="navItemDropDown"><a href="#">Contacto</a></li><li class="navItemDropDown"><a href="login.html">Iniciar sesión </a></li></ul></div>';

    document.getElementById('header').insertAdjacentHTML('beforeend', menu);


})