<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<html>
<head>
    <%@ page isELIgnored="false" %>
    <title>${title}</title>
    <meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${path}/resources/js/list.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <link rel="stylesheet" href="${path}/resources/css/subpage.css">
</head>
<body>
<div class="dropmain">
<nav class="navbar">


    <div class="navbar_logo">
        <a href="/"><img class="grlogo" src="${path}/resources/images/logo.png"></a>


    </div>

    <ul class="navbar_menu">
        <li><a href="#">그린카 소개</a></li>
        <li><a href="#">예약하기</a></li>
        <li><a href="#">이벤트/쿠폰</a></li>
        <li><a href="#">그린존 신청</a></li>
        <li><a href="#">고객센터</a></li>

    </ul>
    <div class="navbar_link">
            <span>
                <c:if test="${login != null}">
                    <!--<a style="margin-right: 10px; font-size: 14px; font-weight: 500; color: #3c3c3c" >${login.name}</a>-->
                    <a href="/mypage">마이페이지</a>
                    <a class="logout" href="#" onclick="location.href='logout'">로그아웃</a>
                </c:if>
            </span>
        <c:if test="${login == null}">
            <span>

                <a href="/login">로그인</a>
            </span>
            <span>
                <a href="/register">회원가입</a>
            </span>
        </c:if>
    </div>

</nav>
<div class="dropdown">
    <ul>
        <li>
            <a href="#">그린카란?</a>
            <a href="#">이용안내</a>
        </li>
        <li>
            <a href="/list">차량예약</a>
            <a href="#">편도서비스</a>
            <a href="#">나눔카서비스</a>
        </li>
        <li>
            <a href="#">쿠폰받기</a>
            <a href="#">이벤트</a>
            <a href="#">제휴혜택</a>
        </li>
        <li>
            <a href="#">자주찾는질문</a>
            <a href="#">1:1문의</a>
            <a href="#">공지사항</a>
        </li>
        <li>
            <a href="#">그린존신청</a>
            <a href="#">제휴안내</a>
            <a href="#">온라인서류제출</a>
        </li>
    </ul>
</div>
</div>


<div class="maincontainer">
    <div class="mypage_01">
        <p class="mypage_name">김범준님</p>
        <ul>
            <li>
                <h2>찜한 차량</h2>
                <a href="#">0</a>
            </li>
            <li>
                <h2>예약 내역</h2>
                <a href="#">0</a>
            </li>
            <li>
                <h2>나의 위치</h2>
                <a href="#">모충동</a>
            </li>
        </ul>

    </div>

    <div class="mypage_02">
        <h2>회원정보</h2>
        <form method="post" action="/mypage">
        <ul>

            <li>
                <p>고객명</p>
                <input type="text" name="name" value="${login.name}" readonly style="background-color: #dddddd;">
            </li>
            <li>
                <p>휴대폰번호</p>
                <input type="text" name="userTel" value="${login.userTel}" readonly style="background-color: #dddddd;">
            </li>
            <li>
                <p>새 비밀번호</p>
                <input type="password" name="pw" placeholder="비밀번호 입력" id="pw">
            </li>
            <li>
                <p>새로운 비밀번호 확인</p>
                <input type="password" placeholder="비밀번호 재입력" id="check_pw" onkeyup="checkpw()">


            </li>
            <li>
                <p>이메일</p>
                <input type="text" name="userEmail" value="${login.userEmail}">
            </li>

        </ul>
        <button type="submit" id="update_btn" onclick="updateClick()">회원정보 수정</button>
        </form>


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
                            <img src="${path}/resources/images/img_partner_seoul.gif">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="${path}/resources/images/img_partner_suwon.gif" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="${path}/resources/images/img_partner_incheon.gif" alt="">
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