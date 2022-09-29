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
    <link rel = "stylesheet" href="${path}/resources/css/subpage.css" />
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
            <span>로그인</span>
            <span>회원가입</span>
        </div>

    </nav>
    <div class="dropdown">
        <ul>
            <li>
                <a href="/subpage01">그린카란?</a>
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
    <div class="info_inner">
            <span>
                <h3 style="text-align: center;">이동을 새로 그리다, 그린카</h3>
                <p class="tit">국내 카셰어링 시장의 First Mover</p>
                <p class="sub_tit">2011년 국내 최초 카셰어링 서비스 도입</p>

            </span>
        <img src="${path}/resources/images/bg_greencar_01.jpg" alt="">

        <span>
                <p class="tit">2019 K-BPI 카셰어링 부문,
                    <br>

                    5년 연속 1위 수상</p>
                <p class="sub_tit">최고의 서비스를 제공하는 카셰어링 대표 브랜드 선정</p>

            </span>
        <img src="${path}/resources/images/bg_greencar_02.jpg" alt="">
        <div class="info_inner__">
                <span>
                <h3>사지 않고 이용한다, 내 차가 필요 없는 이유</h3>
                </span>
            <div class="about_info">
                <div class="inner_img">
                    <img src="${path}/resources/images/bg_greencar_03.png" alt="">
                </div>
                <ul>
                    <li>
                        <span>필요한 시간만큼</span>
                        <p>
                            데이트,외부 미팅,
                            <br>
                            쇼핑 차가 필요한 순간
                            <br>
                            언제든 10분 단위로
                        </p>
                    </li>
                    <li>
                        <span>편리한 대여/반납</span>
                        <p>
                            앱으로 간편하게 예약!
                            <br>
                            별도의 인계 과정 없이
                            <br>
                            무인으로 차를 대여
                        </p>
                    </li>
                    <li>
                        <span>합리적 대여 비용</span>
                        <p>
                            대여시간과 주행거리에
                            <br>
                            비례하는 합리적인 비용만
                            <br>
                            지불하는 시스템
                        </p>
                    </li>
                    <li>
                        <span>다양한 차종선택</span>
                        <p>
                            경차, SUV, 전기차,
                            <br>
                            수입차까지 60여 종
                            <br>
                            이상의 차종 중 선택
                        </p>
                    </li>
                    <li>
                        <span>어디든 내 주위 3분</span>
                        <p>
                            먼 곳으로 이동하지
                            <br>
                            않아도 회사, 집, 학교,
                            <br>
                            내 주위 3분 내 그린존 위치
                        </p>
                    </li>

                </ul>
            </div>

            <div class="info_table">
                <table>
                    <th>비교</th>
                    <th>그린카</th>
                    <th>단기렌터카</th>
                    <tr>
                        <td>최소 대여시간</td>
                        <td>30분 부터 (10분 단위)</td>
                        <td>3시간 부터 (1시간 단위)</td>
                    </tr>
                    <tr>
                        <td>대여장소</td>
                        <td>회사, 집, 학교 주위의 가까운 그린존</td>
                        <td>지점 영업소</td>
                    </tr>
                    <tr>
                        <td>대여방식</td>
                        <td>앱이나 홈페이지에서 예약 후 무인으로 대여</td>
                        <td>직원과 대면해 계약서 작성 후 대여</td>
                    </tr>
                    <tr>
                        <td>반납 가능시간</td>
                        <td>24시간</td>
                        <td>지점 영업소의 운영시간 이내</td>
                    </tr>
                </table>


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