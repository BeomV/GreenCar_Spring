$(document).ready(function(){
    $("#inputbox input").keyup(function () {
        var test = $("#inputbox input").val();
        if(test == "") {
            $(this).css('border','red solid 1px');
        }else{

            $(this).css('border','rgb(230,230,230) solid 1px');
        }
    });

    $("#inputbox_btn").click(function () {
        $(".findid").fadeOut(300);
        $(".findIndex").fadeIn(400);

    });

    $("#goReset").click(function () {
        $(".findIndex").fadeOut(300);
        $(".resetpw").fadeIn(3000);

    });

    $(".resetpw input").keyup(function () {
        var test = $("#1stpw").val();
        var test2 = $("#2ndpw").val();

        if(test != test2){
            $("#resetpw_btn").prop("disabled",true);
            $(this).css('border','red solid 1px');
            console.log('다름');
        }
        else{
            $("#resetpw_btn").removeAttr("disabled");
            $(".resetpw input").css('border','#00c88c solid 1px');
            console.log('같음');

        }

    });

    $("#resetpw_btn").click(function () {

        var test = $("#1stpw").val();
        var test2 = $("#2ndpw").val();

        if(test != test2){

        }
        else{
            $("#resetpw_btn").removeAttr("disabled");
            alert('비밀번호가 재설정 되었습니다.');
            location.href="/login.html"
        }

    });

    $("#gologin").click(function (){
        location.href ="/login"
    });

    $("#gohome").click(function (){
        location.href ="/"
    });

});



