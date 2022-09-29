<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<html>
<head>
  <%@ page isELIgnored="false" %>
  <meta charset="UTF-8">
  <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="${path}/resources/js/list.js"></script>
  <script src="${path}/resources/js/forget.js"></script>
  <link rel="stylesheet" href="${path}/resources/css/style.css">
  <link rel="stylesheet" href="${path}/resources/css/subpage.css">
  <link rel="stylesheet" href="${path}/resources/css/forget.css">


  <title>Document</title>


</head>
<body>
<nav class="navbar">


  <div class="navbar_logo">
    <a href="/"><img class="grlogo" src="${path}/resources//images/logo.png"></a>


  </div>

  <ul class="navbar_menu">
    <li><a href="#">그린카 소개</a></li>
    <li><a href="#">예약하기</a></li>
    <li><a href="#">이벤트/쿠폰</a></li>
    <li><a href="#">그린존 신청</a></li>
    <li><a href="#">고객센터</a></li>

  </ul>
  <div class="navbar_link">
    <span>로그인</span>
    <span>회원가입</span>
  </div>

</nav>

<div class="maincontainer">
  <div class="logo">
    <a href="/"><img class="grlogo" src="${path}/resources/images/logo.png"></a>
  </div>



  <div class="forgetid">
    <div class="findid">
      <h3>
        아이디 찾기
      </h3>
      <div class="inputbox" id="inputbox">
        <p> 등록된 휴대폰 번호</p>
        <input type="text" placeholder="휴대폰번호 입력">
        <p> 등록된 이메일</p>
        <input type="email" placeholder="이메일 입력">
        <button type="submit" id="inputbox_btn">아이디 찾기</button>

      </div>
    </div>


    <div class="findIndex">
      <h3>
        고객님의 아이디를 알려드립니다.
      </h3>
      <div class="id_box">
        <p>beom5110</p>
        <p>(2022-09-22) 가입</p>
      </div>
      <div class="id_box_button">
        <button type="submit" id="goReset">비밀번호 재설정</button>
        <button type="submit" id="gologin">로그인</button>

      </div>
    </div>

    <div class="resetpw">
      <h3>
        비밀번호를 재설정합니다.
      </h3>
      <div class="inputbox" id="inputbox2" style="text-align: left;">
        <p> 비밀번호</p>
        <input type="password" placeholder="비밀번호 입력" id="1stpw">
        <p> 비밀번호 확인</p>
        <input type="password" placeholder="비밀번호 다시 입력" id="2ndpw">
        <button type="submit" id="resetpw_btn">비밀번호 재설정</button>

      </div>

    </div>


  </div>




  <div class="footer">
    <div class="footer_header">
      <div class="footer_top">
        <ul class="footer_menu">
          <li><a href="#">장기렌터카</a></li>
          <li><a href="#">단기렌터카</a></li>
          <li><a href="#">중고차렌터카</a></li>
          <li><a href="#">내차팔기</a></li>
          <li><a href="#">L.POINT</a></li>
        </ul>
        <ul class="footer_icons">
          <li>
            <a href="#">
              <img src="/images/img_partner_seoul.gif">
            </a>
          </li>
          <li>
            <a href="#">
              <img src="/images/img_partner_suwon.gif" alt="">
            </a>
          </li>
          <li>
            <a href="#">
              <img src="/images/img_partner_incheon.gif" alt="">
            </a>
          </li>

        </ul>



      </div>
    </div>

    <div class="footer_center">
      <div class="ft_txt">
        <ul>
          <li><a href="">회사소개</a></li>
          <li><a href="">제휴안내</a></li>
          <li><a href="">회원이용약관</a></li>
          <li><a href="">개인(위치)정보 처리방침</a></li>
          <li><a href="">자동차대여약관</a></li>
          <li><a href="">위치기반 서비스 이용약관</a></li>
          <li><a href="">위치정보 사업자 이용약관</a></li>
          <li><a href="">영상정보처리기기 운영관리방침</a></li>
        </ul>

      </div>

      <div class="ft_icons">
        <li>
          <a href="#">
            <i class="fa-brands fa-facebook-f"></i>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa-sharp fa-solid fa-b"></i>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa-brands fa-instagram"></i>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa-sharp fa-solid fa-n"></i>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="fa-brands fa-youtube"></i>
          </a>
        </li>
      </div>

    </div>
    <div class="footer_info">
      <p>
        (주) 그린카 사업자등록번호:220-87-91595 통신판매업신고번호: 제2011-서울강남-01456호 대표이사 : 김경봉
        <br>
        서울특별시 강남구 테헤란로 70길 16(대치동)     TEL : 1899-1313    FAX:02-6499-2832
        <br>
        Copyright ⓒ 2014 () All Rights Reserved

      </p>


    </div>
  </div>
</div>
</body>



</html>