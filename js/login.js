$('#password').focusin(function () {
    $('.forms').addClass('up')
});
$('#password').focusout(function () {
    $('.forms').removeClass('up')
});

//Panda Eye move
$(document).on("mousemove" , function (event) {
    var dw = $(document).width() / 15;
    var dh = $(document).height() / 15;
    var x = event.pageX / dw;
    var y = event.pageY / dh;
    $('.eye-ball').css({
        width: x,
        height: y
    });
}); 


// validation


$('.buttons').click(function () {
    $('.forms').addClass('wrong-entry');
    setTimeout(function () {
        $('.forms').removeClass('wrong-entry');
    }, 3000);
});