$(document).ready(function () {
    $.getJSON("../json/productos.json", function (data) {
        var productosJson = data;
        function obtenerIdDeURL() {
            var parametros = new URLSearchParams(window.location.search);
            return parametros.get('id');
        }
        function buscarObjetoPorId(id) {
            for (var i = 0; i < data.length; i++) {
                if (data[i].id === id) {
                    return data[i];
                }
            }
            return null;
        }
        var objetoJson = buscarObjetoPorId(obtenerIdDeURL());
        var descuentoArticulo = parseInt(objetoJson.Descuento);
        var precioArticulo = parseInt(objetoJson.Precio);
        var precioDescuento = precioArticulo * descuentoArticulo / 100;
        var precioFinalArticulo = precioArticulo - precioDescuento;
        if (isNaN(precioFinalArticulo)) {
            var precioFinalArticulo = precioArticulo;
            var descuentoArticulo = 'No Aplica';
        } else {
            var descuentoArticulo = '-'+descuentoArticulo+'%';
        }
       
        $('#nombreArticulo').append(objetoJson.Nombre);
        $('#portadaArticulo').html('<img src="'+objetoJson.Imagen+'" alt="" class="img">');
        $('#referenciaArticulo').html('<span ><strong>Referencia: </strong>'+objetoJson.id+'</span>');
        $('#precioArticulo').html('<span><strong>Precio + Iva: </strong>'+precioArticulo+'$</span><span><strong>Descuento: </strong>'+descuentoArticulo+'</span>');
        $('#precioFinalProducto').html('<span>Precio final: <strong>'+precioFinalArticulo+'$</strong></span><button class="btn">Continuar con Mercado Pago</button>');
    });
})