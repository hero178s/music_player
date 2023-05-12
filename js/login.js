$(document).ready(function() {
    $('#eye').click(function(){
        $(this).children('i').toggleClass('password');
        $(this).children('i').toggleClass('bi-eye-slash bi-eye');
        if($(this).hasClass('password')){
            alert('Type text');
           // $(this).prev().attr('password','text');
        }
    });
    
});