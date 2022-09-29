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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href="${path}/resources/css/style.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="${path}/resources/js/list.js"></script>


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
            <c:if test="${login != null}">
                <div class="session_login">
            <span>

                    <!--<a style="margin-right: 10px; font-size: 14px; font-weight: 500; color: #3c3c3c" >${login.name}</a>-->
                    <a>마이페이지</a>
                    <a class="logout" href="#" onclick="location.href='logout'">로그아웃</a>

            </span>
                </div>
            </c:if>
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
    <div class="list_wrap">
        <div class="list_inner01">
            <div class="map_wrap">
                <p>그린존 찾기</p>
                <div class="map_inner">
                    <span class="map_sub_tit">

                        <i class="fa-sharp fa-solid fa-location-crosshairs"></i>
                        <p class="map_txt"><a href="#" id="location_func" style="color: #7c7c7c;" value="${login.userlocation}">내 주소로 찾기</a></p>

                    </span>
                    <input type="search" id="searchInput" placeholder="'지번' 주소로 검색해주세요" style="width:190px; padding: 0px 5px;">
                    <button type="submit" id="map_btn" onclick="func.filter()">검색하기</button>
                </div>
            </div>
            <div class="car_fitler01">
                    <span>
                    <p class="_tit">차종</p>
                    </span>
                <ul>
                    <li>
                        <button type="button" class="car_" id="car_btn0"  value="경차">경차</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn1"  value="소형차">소형차</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn2" value="준중형차">준중형차</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn3" value="중형차">중형차</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn4" value="대형차">대형차</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn5" value="SUV/RV">SUV/RV</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn6" value="하이브리드">하이브리드</button>
                    </li>
                    <li>
                        <button type="button" class="car_" id="car_btn7" value="전기차">전기차</button>
                    </li>



                </ul>

            </div>


        </div>
        <div class="list_inner02" id="top">
            <ul>
                <c:forEach items="${list}" var="itemVO">

                    <li data-name="${itemVO.car_location}" data-grade="${itemVO.car_grade}">
                        <form method="POST" action="/reservation">
                            <c:if test="${login != null}">
                                <input type="hidden" name="user_no" value="${login.user_no}">
                                <input type="hidden" name="name" value="${login.name}">
                                <input type="hidden" name="id" id="userID" value="${login.id}">
                            </c:if>
                        <img src="${path}/resources/images/${itemVO.car_type}.jpg" alt="" id="cartypeimg">
                        <span>

                            <c:if test="${login != null}">
                                <input type="hidden" name="car_listno" value="${itemVO.car_listno}">
                                <input type="hidden" name="car_name" value="${itemVO.car_name}">
                                <input type="hidden" name="car_location" value="${itemVO.car_location}">

                            </c:if>
                            <p class="list_tit">${itemVO.car_name}</p>
                            <p class="list_price">${itemVO.car_price}원</p>
                            <p class="list_oil">${itemVO.car_oil}</p>
                            <p class="list_oil">${itemVO.car_grade}</p>
                            <p class="list_oil"  style="color: black; font-weight: 500">${itemVO.car_location}</p>
                            <button type="submit" id="list_btn">예약하기</button>

                        </span>
                        </form>
                    </li>

                </c:forEach>





                <!--
                <li>
                    <img src="${path}/resources/images/k5.jpg" alt="">
                    <span>
                            <p class="list_tit">K5 3세대(하이브리드)</p>
                            <p class="list_price">6,825원</p>
                            <p class="list_oil">250원/km</p>
                            <button type="submit" id="list_btn">예약하기</button>
                        </span>
                </li>
                <li>
                    <img src="${path}/resources/images/sonata.jpg" alt="">
                    <span>
                            <p class="list_tit">소나타 3세대(하이브리드)</p>
                            <p class="list_price">1234원</p>
                            <p class="list_oil">123원/km</p>
                            <button type="submit" id="list_btn">예약하기</button>
                        </span>
                </li>
                <li>
                    <img src="${path}/resources/images/k5.jpg" alt="">
                    <span>
                            <p class="list_tit">K5 3세대(하이브리드)</p>
                            <p class="list_price">6,825원</p>
                            <p class="list_oil">250원/km</p>
                            <button type="submit" id="list_btn">예약하기</button>
                        </span>
                </li>
                <li>
                    <img src="${path}/resources/images/k5.jpg" alt="">
                    <span>
                            <p class="list_tit">K5 3세대(하이브리드)</p>
                            <p class="list_price">6,825원</p>
                            <p class="list_oil">250원/km</p>
                            <button type="submit" id="list_btn">예약하기</button>
                        </span>
                </li>
                <li>
                    <img src="${path}/resources/images/k5.jpg" alt="">
                    <span>
                            <p class="list_tit">K5 3세대(하이브리드)</p>
                            <p class="list_price">6,825원</p>
                            <p class="list_oil">250원/km</p>
                            <button type="submit" id="list_btn">예약하기</button>
                        </span>
                </li>
                <li>
                    <img src="${path}/resources/images/k5.jpg" alt="">
                    <span>
                            <p class="list_tit">K5 3세대(하이브리드)</p>
                            <p class="list_price">6,825원</p>
                            <p class="list_oil">250원/km</p>
                            <button type="submit" id="list_btn">예약하기</button>
                        </span>
                </li>-->

            </ul>


        </div>


    </div>

    <div class="paging-div">
        <c:forEach var="i" begin="1" end="${totalpage}">
            <a href="/list?viewPage=${i}">${i}</a>
        </c:forEach>
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


<script>
    var div2 = document.getElementsByClassName("car_");

    function handleClick(event) {
        console.log(event.target);
        // console.log(this);
        // 콘솔창을 보면 둘다 동일한 값이 나온다

        console.log(event.target.classList);

        if (event.target.classList[1] === "clicked") {
            event.target.classList.remove("clicked");
        } else {
            for (var i = 0; i < div2.length; i++) {
                div2[i].classList.remove("clicked");
            }

            event.target.classList.add("clicked");
        }
    }

    function init() {
        for (var i = 0; i < div2.length; i++) {
            div2[i].addEventListener("click", handleClick);
        }
    }

    init();

</script>

<script>

</script>

</html>