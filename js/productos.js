$.getJSON('json/productos.json', function(data){
    for(var i = 0; i < data.result.length; i++) {
          out = '<div class="card">' +
          data.result[i].Nombre
          + '</div>';
      }
       out += "</ul>";
      $('#productList').html(out);
  });
  
