$('#dropdown').click(function(){
    if ($('#dropDownMenu').css('display') != 'none') {
        $('#dropDownMenu').css('display', 'none');
    } else {
        $('#dropDownMenu').css('display', 'grid');
    }     
})