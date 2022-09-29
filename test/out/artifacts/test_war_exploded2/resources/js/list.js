$(document).ready(function (){
   load();
});



function checkpw() {
    var test = $("#pw").val();
    var test2 = $("#check_pw").val();

    if (test2 != test){
        $("#pw").css('border','red solid 1px');
        $("#check_pw").css('border','red solid 1px');
        $("#update_btn").prop("disabled",true);
    }
    else{
        $("#pw").css('border','#00C88C solid 1px');
        $("#check_pw").css('border','#00C88C solid 1px');
        $("#update_btn").removeAttr("disabled");
    }


}

function updateClick() {
    alert('회원정보 수정이 완료되었습니다.');


}

function load(){
    $("#update_btn").prop("disabled",true);



}

$(document).ready(function (){
    $("#list_btn").click(function (){

        if ($("#userID").val() == null){
            $("#list_btn").prop("disabled",true);
            console.log('비로그인');
            alert('로그인 후 이용해주세요.');
            location.href = "/login";


        } else{
            console.log('로그인');
            $("#list_btn").removeAttr("disabled");
        }
    });
});


let func;
$(document).ready(function() {
    func = {
        filter: function(){
            if($('#searchInput').val()=="")
                $("#top ul li").css('display','');
            else{
                $("#top ul li").css('display','none');
                $("#top ul li[data-name='"+$('#searchInput').val()+"']").css('display','');
            }
            return false;
        }
    }
});

$(document).ready(function(){




    $("#car_btn0").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn1").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn2").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn3").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn4").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn5").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn6").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;
    $("#car_btn7").click(function(){
        if ($(this).hasClass('clicked')){
            var test = $(this).val();
            $("#top ul li").css('display','none');
            $("#top ul li[data-grade='"+test+"']").css('display','');

        }else{
            $("#top ul li").css('display','');
        }
    }) ;



    $("#location_func").click(function (){
        var test = $("#location_func").attr('value');
        if (test == ""){
            alert("로그인 후 이용해주세요.");
        }else {
            $("#top ul li").css('display','none');
            $("#top ul li[data-name='"+test+"']").css('display','');
        }


    });

});

