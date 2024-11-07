$(document).ready(function($) {
    var width = $(window).width();
        console.log(width);
        if (width <= 720) {
            $('.brand').html('');
            $('.arrows').html('');
            $('.coverIMG2').children().eq(1).after( '<div id="moreInfo"><h2><a href="#">Mas información<i class="material-icons">touch_app</i></a></h2>')
        }
        $('#moreInfo').click(function(){ 
            if ($('.brand').html() === '') {
                $('.brand').append('<a href="brand/nvidia.html"><img src="img/nvidiaBrand.png" alt=""></a><a href="brand/radeon.html"><img src="img/radeonBrand.png" alt=""></a><a href="brand/intel.html"><img src="img/intelBrand.png" alt=""></a>');      
            } else {
                $('.brand').html('');
            }
 })
})
