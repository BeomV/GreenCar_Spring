<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="true"%>
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
    <div class="secion1">
        <div class="slide_menu">

            <img src="${path}/resources/images/menu2.jpg" alt="" style="width: 1220px;" height="auto;">

        </div>
        <div class="contents">
            <div class="reservation">
                <h3 class="txt">
                    <a href="#">어디에서 출발하세요?</a>
                    <a href="#"><i class="fa-sharp fa-solid fa-map-location-dot"></i></a>
                </h3>



                <ul>
                    <li><a href="">#서울</a></li>
                    <li><a href="">#수원</a></li>
                    <li><a href="">#부산</a></li>
                    <li><a href="">#청주</a></li>
                    <li><a href="">#인천</a></li>

                </ul>
            </div>
            <div class="contents_icon">
                <ul>
                    <li><a href="#">
                            <span>
                                <i class="fa-solid fa-star"></i>
                            </span>
                        <p>즐겨찾기</p>
                    </a>

                    </li>
                    <li><a href="#">
                            <span>
                                <i class="fa-solid fa-clock"></i>
                            </span>
                        <p>대여시간</p>
                    </a>

                    </li>
                    <li><a href="#">
                            <span>
                                <i class="fa-solid fa-car"></i>
                            </span>
                        <p>차량검색</p>
                    </a>

                    </li>
                    <li><a href="#">
                            <span>
                                <i class="fa-solid fa-clipboard-check"></i>
                            </span>
                        <p>예약내역</p>
                    </a>

                    </li>
                    <li><a href="#">
                            <span>
                                <i class="fa-solid fa-book"></i>
                            </span>
                        <p>보험약관</p>
                    </a>

                    </li>

                </ul>


            </div>


        </div>

    </div>

    <div class="section2">
        <h3>어떤 차를 찾으세요?</h3>
        <div class="car_searc_wrap">
            <input type="text" id="car_search" placeholder="모델명을 입력해주세요. 예) K5">
            <a href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
        </div>

        <div class="car_search2">
            <div class="car_search2_inner">
                <div class="tab0">상세 차량 검색</div>
                <div class="tab1">차종별 검색</div>
                <div class="tab2">현재 위치에서 찾기</div>
            </div>

            <div class="car_filter">
                <select>
                    <option value="1">국산</option>
                </select>
                <select>
                    <option value="1">제조사</option>
                </select>
                <select>
                    <option value="1">모델</option>
                </select>
                <select>
                    <option value="1">세부모델</option>
                </select>
                <button type="button" id="btn_car_filter">검색하기</button>

            </div>
        </div>



    </div>

    <div class="section3">
        <div class="section3_inner">
            <h2>공지사항</h2>
            <p class="sub_tit">그린카의 다양한 소식을 확인하세요</p>
            <ul class="notice_list">
                <li><a href="#">
                    <span class="flag">공지
                    <p>[안내] 8월 신규 그린존을 안내 드립니다.</p>
                    </span>
                    <br>
                    <span class="date">
                        2022-09-01
                    </span>
                    <br>
                    <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                </a>
                </li>

                <li>
                    <a href="#">
                    <span class="flag">공지
                        <p>[발표] 그린카 프레시 캠페인 - 담배와의, 전쟁! 8월 적...</p>
                    </span>
                        <br>
                        <span class="date">
                        2022-09-01
                    </span>
                        <br>
                        <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="flag">공지
                        <p>[공지] 개인정보 처리방침 개정 안내</p>
                        </span>
                        <br>
                        <span class="date">
                        2022-08-31
                    </span>
                        <br>
                        <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="flag">공지
                        <p>[요금안내] 22년 08월 주행요금 인하안내 (2차)</p>
                        </span>
                        <br>
                        <span class="date">
                        2022-08-22
                    </span>
                        <br>
                        <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="flag">공지
                        <p>[요금안내] 22년 08월 주행요금 인하안내 (1차)</p>
                        </span>
                        <br>
                        <span class="date">
                        2022-08-05
                    </span>
                        <br>
                        <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                    <span class="flag">공지
                        <p>[공지] 회원이용약관 개정 안내</p>
                        </span>
                        <br>
                        <span class="date">
                        2022-07-15
                    </span>
                        <br>
                        <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                    </a>
                </li>
            </ul>


        </div>
    </div>

    <div class="section4">
        <div class="section4_inner">
            <h2>제휴혜택</h2>
            <p>그린카만의 특별한 혜택을 누려보세요</p>

            <div class="section4_inner02">
                <div id="slideshow">
                    <ul class="slides">
                        <li>
                            <img src="${path}/resources/images/slide0.jpg" alt="">
                            <span class="slide_tit">
                        <h2>제이드가든</h2>
                        <p>숲속에서 만나는 작은유럽 제이드가든</p>
                        </span>
                        </li>
                        <li>
                            <img src="${path}/resources/images/slide1.JPG" alt="">
                            <span class="slide_tit">
                            <h2>명량해상케이블카</h2>
                            <p>하늘에서 만나는 명량대첩, 감동과 힐링의 울돌목 회오리</p>
                        </span>
                        </li>
                        <li>
                            <img src="${path}/resources/images/slide2.jpg" alt="">
                            <span class="slide_tit">
                            <h2>뮤지엄 원</h2>
                            <p>지친 현대인들에게 예술을 통한 치유와 위로의 메시지를 전달</p>
                        </span>
                        </li>
                        <li>
                            <img src="${path}/resources/images/slide3.jpg" alt="">
                            <span class="slide_tit">
                            <h2>더스카이</h2>
                            <p>인생 버킷리스트 "헬기 투어" 이제 국내에서도 즐기자!!</p>
                        </span>
                        </li>
                        <li>
                            <img src="${path}/resources/images/slide4.png" alt="">
                            <span class="slide_tit">
                            <h2>LF Mall</h2>
                            <p>그린카 회원 대상 특별 혜택</p>
                        </span>
                        </li>
                    </ul>

                </div>
                <p class="slide_control">
                <span class="prev">
                    <i class="fa-sharp fa-solid fa-circle-chevron-left"></i>
                </span>
                    <span class="next">
                    <i class="fa-sharp fa-solid fa-circle-chevron-right"></i>
                </span>
                </p>
            </div>
            <script src="${path}/resources/js/main.js"></script>
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
                            <img src="resources//images/img_partner_seoul.gif">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources//images/img_partner_suwon.gif" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="resources//images/img_partner_incheon.gif" alt="">
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