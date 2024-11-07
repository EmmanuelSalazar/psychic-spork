$(document).ready(function () {
  $.getJSON("../json/productos.json", function (data) {
    var productosJson = data;
    function mostrarProductos(productos) {
      var card = $("#productList");
      $.each(productos, function (i, producto) {
        console.log(producto.Imagen);
        var productoHTML =
          '<div class="card">' +
          '<img src="' +
          producto.Imagen +
          '" alt="">' +
          '<div class="infoCard"><h2 class="titleCard">' +
          producto.Nombre +
          "</h2>" +
          "<p>$" +
          producto.Precio +
          "</p>" +
          '<button class="btn" onclick="redirect(' +
          producto.Id +
          ')">Comprar</button></div></div>';
        card.append(productoHTML);
      });
    }
    mostrarProductos(productosJson);
  });
});
