<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="true"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page isELIgnored="false" %>
    <meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${path}/resources/list.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <link rel="stylesheet" href="${path}/resources/css/subpage.css">
    
    
    <title>Document</title>

    
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
                <a href="/info/subpage01">그린카란?</a>
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
        <div class="sub2_setction0">
            <span class="main_tit">
                <strong>앱 이용방법</strong>
                <p>스마트폰에 앱을 설치하면 더욱 편리하게 그린카 서비스를 이용할 수 있습니다.</p>
            </span>

            <span>
                <ul class="circle_box">
                    <li>
                        <span>
                        <strong>01</strong>
                        <p>앱 설치</p>
                        </span>
                        <div class="arr">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                        
                    </li>
                    <li>
                        <span>
                        <strong>02</strong>
                        <p>회원가입</p>
                        </span>
                        <div class="arr">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                        
                    </li>
                    <li>
                        <span>
                        <strong>03</strong>
                        <p>차량예약</p>
                        </span>
                        <div class="arr">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                        
                    </li>
                    <li>
                        <span>
                        <strong>04</strong>
                        <p>차량이용</p>
                        </span>
                        <div class="arr">
                            <i class="fa-solid fa-angle-right"></i>
                        </div>
                        
                    </li>
                    <li>
                        <span>
                        <strong>05</strong>
                        <p>차량반납</p>
                        </span>
                        <div class="arr">
                            
                        </div>
                        
                    </li>


                </ul>
            </span>
        </div>
        <div class="sub2_section01">
            <img src="${path}/resources/images/bg_guide_01.png" alt="">
            <div class="inner01">
                <span>
                    <p>01</p>
                    <strong>앱 설치</strong>
                    <p>
                        먼저 앱스토어에서
                        <br>
                        그린카를 검색해 앱을 설치해주세요
                    </p>
                    <ul>
                    <li>
                        <a>
                        <i class="fa-brands fa-apple"></i>
                        App store
                        <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </li>
                    <li>
                        <a>
                            <i class="fa-brands fa-google-play"></i>
                            Google Play
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </li>
                    </ul>
                </span>

            </div>
        </div>
        <div class="sub2_section02">
            <div class="section02_inner">
                <p>02</p>
                <h3>회원가입</h3>
                <p>
                    간편가입 후 면허정보와 결제정보를 입력해
                    <br>
                    회원가입을 완료합니다.
                </p>
                <span class="tip">
                    <p class="tip_box">TIP</p>
                    <p>사진 촬영으로 간편하게 정보를 입력하세요.</p>
                </span>
                
            </div>
            <img src="${path}/resources/images/bg_guide_02.png" alt="">
        </div>

        <div class="sub2_section03">

            <img src="${path}/resources/images/bg_guide_03.png" alt="">
            <div class="section03_inner">
                <p>03</p>
                <h3>차량예약</h3>
                <p>
                    지도에서 원하는 그린존을 찾고
                    <br>
                    대여시간을 설정해 간편하게 예약합니다.
                </p>
                <span class="tip">
                    <p class="tip_box">TIP</p>
                    <p>
                        더 경제적으로 그린카를 이용하시려면
                        <br>
                        다양한 쿠폰과 이벤트를 꼭 확인하세요.
                    </p>
                </span>
                
            </div>

        </div>

        <div class="sub2_section04">
            <div class="section04_inner">
                <p>04</p>
                <h3>차량이용</h3>
                <p>
                    앱의 스마트키 기능을 활용해 차량을 이용합니다.
                    
                </p>
                </div>
                <img src="${path}/resources/images/bg_guide_04.png" alt="">

        </div>

        <div class="sub2_section05">

            <img src="${path}/resources/images/bg_guide_05.png" alt="">
            <div class="section03_inner">
                <p>05</p>
                <h3>차량반납</h3>
                <p>
                    지정된 그린존에 차량을 주차하고
                    <br>
                    반납 신청합니다.
                </p>
                <span class="tip">
                    <p class="tip_box">TIP</p>
                    <p>
                        다음 고객이 헤매지 않도록
                        <br>
                        주차위치를 그린댓글에 남겨주세요.
                    </p>
                </span>
                
            </div>

        </div>
        
        <div class="sub2_section06">
            <ul>
                <li>
                    <a>
                    <i class="fa-brands fa-apple"></i>
                    App store
                    <i class="fa-solid fa-angle-right"></i>
                    </a>
                </li>
                <li>
                    <a>
                        <i class="fa-brands fa-google-play"></i>
                        Google Play
                        <i class="fa-solid fa-angle-right"></i>
                    </a>
                </li>
                </ul>
        </div>

        <div class="sub2_section07">
            <div class="section07_inner">
            <img src="${path}/resources/images/bg_guide.jpg" alt="">
            <div class="section07_tit">
                <h3>그린카 클린 에티켓</h3>
                <p>함께 이용하는 그린카, 행복한 드라이빙이 될 수 있도록
                <br>에티켓을 꼭 지켜주세요.
                </p>
            </div>
            </div>
            <div class="section07_txt">
                <ul>
                    <li>
                        <h2>금연</h2>
                        <p>
                            그린카 전 차량 내에서는 흡연 금지입니다.
                            <br>
                            흡연이 적발되면 패널티 비용 20만 원이 부과되며
                            <br>
                            서비스 이용이 영구 불구합니다.
                        </p>
                    </li>
                    <li>
                        <h2>쓰레기 금지</h2>
                        <p>
                            즐거운 드라이빙 중 생긴 쓰레기는 다음 고객을 위해
                            <br>
                            챙겨서 내려주세요. 반납 전 컵홀더나 콘솔박스에 남은
                            <br>
                            쓰레기가 있는지 꼭 확인해주세요.
                        </p>
                    </li>
                    <li>
                        <h2>연료 체크</h2>
                        <p>
                            다음 고객이 차량을 이용하는데 필요한 연로가 남아있나요?
                            <br>
                            (40% 이상 남은 상태를 권장합니다.)
                            <br>
                            디젤/ 휘발유 차량은 그린카 내에 비치된 주유카드로
                            <br>
                            주유를 해 주시고, 전기차는 반납 시 충전기를 연결해주세요.
                        </p>
                    </li>
                    <li>
                        <h2>반납시간 준수</h2>
                        <p>
                            약속한 반납시간을 지켜주세요. 부득이하게 지연되는 경우에는
                            <br>
                            반납 시간을 연장해주셔야 합니다. 단, 다음 고객이 이미 차량을
                            <br>
                            예약한 경우에는 연장이 불가하며 반납 지연 시간에 비례하여
                            <br>
                            패널티 비용이 부과됩니다.
                        </p>
                    </li>
                    <li>
                        <h2>반려동물</h2>
                        <p>
                            반려동물과 함께 즐거운 드라이빙을 즐기셔도 됩니다.
                            <br>
                            단, 꼭 캐리어 안에 반려동물을 태운 상태로 탑승해주세요.
                            
                        </p>
                    </li>
                </ul>

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