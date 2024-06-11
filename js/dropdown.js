$('#dropdown').click(function(){
    if ($('#dropDownMenu').css('display') != 'none') {
        $('#dropDownMenu').fadeTo('fast', 1);

        $('#dropDownMenu').css('display', 'none');
       
    } else {
        $('#dropDownMenu').fadeTo('fast', 1);
        $('#dropDownMenu').css('display', 'grid');
        
        
    }     
})

