<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>맛삼 식당등록</title>

    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">


    <style type="text/css">
        .modal_wrap {
            display: none;
            width: 500px;
            height: 500px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -250px 0 0 -250px;
            background: #eee;
            z-index: 2;
        }


        .modal_close {
            width: 26px;
            height: 26px;
            position: absolute;
            top: -30px;
            right: 0;
        }

        .modal_close > a {
            display: block;
            width: 100%;
            height: 100%;
            background: url(https://img.icons8.com/metro/26/000000/close-window.png);
            text-indent: -9999px;
        }
    </style>

    <script type="text/javascript" src="<c:url value="/admin_assets/js/jquery/jquery-3.5.1.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/admin_assets/js/jquery/jquery-ui.min.js"/>"></script>

    <script type="text/javascript">
        window.onload = function () {

            function onClick() {
                document.querySelector('.modal_wrap').style.display = 'block';
                document.querySelector('.black_bg').style.display = 'block';
            }

            function offClick() {
                document.querySelector('.modal_wrap').style.display = 'none';
                document.querySelector('.black_bg').style.display = 'none';
            }

            document.getElementById('modal_btn').addEventListener('click', onClick);
            document.querySelector('.modal_close').addEventListener('click',
                offClick);

        };


        $(document).ready(function () {

            $('#btn').click(function () {
                var item = $('<div></div>')
                item.addClass('item')
                item.html($('#content').val())
                $('#box int_time').append(item)

                $('#content').val('')

                var removeBtn = $('<input type="button">')
                removeBtn.val("삭제")
                removeBtn.addClass('removeBtn')
                removeBtn.click(function () {
                    item.remove();
                })

                item.append(removeBtn)

            })

        })
    </script>

    <!-- CUSTOM STYLE CSS -->
    <link rel="stylesheet" href="<c:url value="/owner_assets/css/resjoin.css" />">
</head>
<body>
<!-- header -->

<!-- wrapper -->
<form method="post" action="/manage/resAdd">

    <div id="wrapper">

        <!-- content-->
        <div id="content">
            <div class="joinform">
                <!-- NAME -->
                <div>
                    <h3 class="join_title">
                        <label for="resname">식당 이름</label>
                    </h3>
                    <span class="box int_name"> <input type="text" id="resname"
                                                       class="int" name="resName" maxlength="20">
					</span> <span class="error_next_box"></span>
                </div>


                <!-- LOCATION -->
                <div>
                    <h3 class="join_title">
                        <label for="location">위치</label>
                    </h3>
                    <span class="box int_location"> <input type="text"
                                                           id="location" class="int" maxlength="20" name="resLocation">
					</span> <span class="error_next_box"></span>
                </div>

                <!-- 전화번호 -->
                <div>
                    <h3 class="join_title">
                        <label for="phone">전화번호</label>
                    </h3>

                    <div id="phone">


                        <!-- phone 지역번호-->
                        <div class="spliting" id="locph">
                            <!-- bir_mm -->
                            <span class="box"> <select id="localph" class="sel" name="resPhoneArr">
									<option>지역번호</option>
									<option value="02">02</option>
									<option value="051">051</option>
									<option value="053">053</option>
									<option value="032">032</option>
									<option value="062">062</option>
									<option value="042">042</option>
									<option value="052">052</option>
									<option value="044">044</option>
									<option value="031">031</option>
									<option value="033">033</option>
									<option value="043">043</option>
									<option value="041">041</option>
									<option value="063">063</option>
									<option value="061">061</option>
									<option value="054">054</option>
									<option value="055">055</option>
									<option value="064">064</option>
							</select>
							</span>
                        </div>

                        <div id="ph_first" class="spliting_m">
							<span class="box"> <input type="text" id="fph" class="int"
                                                      maxlength="4" name="resPhoneArr">
							</span>
                        </div>


                        <div id="ph_last" class="spliting_e">
							<span class="box"> <input type="text" id="fla" class="int"
                                                      maxlength="4" name="resPhoneArr">
							</span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>
                </div>


                <!-- Menu theme -->
                <div>
                    <h3 class="join_title">
                        <label for="menu_theme">메뉴 테마</label>
                    </h3>

                    <div class="menu_ch">

                        <div id="mc1" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="star1" value="1성"> <label
                                for="star1"><span>1성</span>
                        </label>
                        </div>

                        <div id="mc2" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="star2" value="2성"/><label for="star2">
                            <span>2성</span>
                        </label>
                        </div>

                        <div id="mc3" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="star3" value="3성"/><label
                                for="star3"><span>3성</span></label>
                        </div>

                        <div id="mc4" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="star0" value="별 없음"/><label
                                for="star0"><span>별 없음</span></label>
                        </div>

                        <div id="mc5" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="chain" value="체인점"/><label
                                for="chain"><span>체인점</span></label>
                        </div>

                    </div>

                    <div class="menu_ch">

                        <div id="mc6" class="wrap">
                            <input name="menuTagContentArr" type="checkbox" id="kor" value="한식"> <label
                                for="kor"> <span>한식</span>
                        </label>
                        </div>

                        <div id="mc7" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="ch" value="중식"/>
                            <label for="ch"> <span>중식</span>
                            </label>
                        </div>

                        <div id="mc8" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="wf" value="양식"/><label
                                for="wf"><span>양식</span></label>
                        </div>

                        <div id="mc9" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="jp" value="일식"/><label
                                for="jp"><span>일식</span></label>
                        </div>

                        <div id="mc10" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="ef" value="기타"/><label
                                for="ef"><span>기타</span></label>
                        </div>

                    </div>
                    <div class="menu_ch">

                        <div id="mc11" class="wrap">
                            <input name="menuTagContentArr" type="checkbox" id="hot" value="따뜻한"> <label
                                for="hot"> <span>따뜻한</span>
                        </label>
                        </div>

                        <div id="mc12" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="cold" value="차가운"/>
                            <label for="cold"> <span>차가운</span>
                            </label>
                        </div>

                        <div id="mc13" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="nooddle" value="국수"/><label
                                for="nooddle"><span>국수</span></label>
                        </div>

                        <div id="mc14" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" value="밥" id="rice"/><label
                                for="rice"><span>밥</span></label>
                        </div>

                        <div id="mc15" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" value="육류" id="meat"/><label
                                for="meat"><span>육류</span></label>
                        </div>

                    </div>

                    <div class="menu_ch">

                        <div id="mc16" class="wrap">
                            <input name="menuTagContentArr" type="checkbox" id="rawfish" value="회"> <label
                                for="rawfish"> <span>회</span>
                        </label>
                        </div>

                        <div id="mc17" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="veg" value="채소"/>
                            <label for="veg"> <span>채소</span>
                            </label>
                        </div>

                        <div id="mc18" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="dessert" value="디저트"/><label
                                for="dessert"><span>디저트</span></label>
                        </div>

                        <div id="mc19" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="soup" value="국물류"/><label
                                for="soup"><span>국물류</span></label>
                        </div>

                        <div id="mc20" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="roast" value="구이"/><label
                                for="roast"><span>구이</span></label>
                        </div>

                    </div>

                    <div class="menu_ch">

                        <div id="mc21" class="wrap">
                            <input name="menuTagContentArr" type="checkbox" id="goodview" value="좋은 뷰"> <label
                                for="goodview"> <span>좋은 뷰</span>
                        </label>
                        </div>

                        <div id="mc22" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="gooddate" value="데이트"/><label
                                for="gooddate">
                            <span>데이트</span>
                        </label>
                        </div>

                        <div id="mc23" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="withfam" value="가족"/><label
                                for="withfam"><span>가족</span></label>
                        </div>

                        <div id="mc24" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="goodpic" value="사진용"/><label
                                for="goodpic"><span>사진용</span></label>
                        </div>

                        <div id="mc25" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="alone" value="홀로"/><label
                                for="alone"><span>홀로 </span></label>
                        </div>

                    </div>

                    <div class="menu_ch">

                        <div id="mc26" class="wrap">
                            <input name="menuTagContentArr" type="checkbox" id="city" value="도시"> <label
                                for="city"> <span>도시</span>
                        </label>
                        </div>

                        <div id="mc27" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="cont" value="외지"/><label for="cont">
                            <span>외지</span>
                        </label>
                        </div>

                        <div id="mc28" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="ocean" value="바다"/><label
                                for="ocean"><span>바다</span></label>
                        </div>

                        <div id="mc29" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" id="mount" value="산"/><label
                                for="mount"><span>산</span></label>
                        </div>

                        <div id="mc30" class="wrap">
                            <input type="checkbox" name="menuTagContentArr" value="외부" id="out"/><label
                                for="out"><span>외부</span></label>
                        </div>

                    </div>


                </div>

                <!-- 서비스 태그 -->
                <div>
                    <h3 class="join_title">
                        <label for="service">서비스 태그</label>
                    </h3>

                    <div id="service_wrap">


                        <div id="pk" class="wrap">
                            <input id="parking" value="주차 가능" name="serviceTagContentArr" type="checkbox"> <label
                                for="parking"> <span>주차 가능</span>
                        </label>
                        </div>


                        <div id="kz" class="wrap">
                            <input type="checkbox" name="serviceTagContentArr" value="키즈존" id="kidzone"
                                   checked="checked"/><label for="kidzone"> <span>키즈
								존</span>
                        </label>
                        </div>


                        <div id="sk" class="wrap">
                            <input type="checkbox" name="serviceTagContentArr" value="흡연실" id="smoking"/><label
                                for="smoking"><span>흡연실</span></label>
                        </div>
                    </div>
                </div>


                <!-- 가격대 -->
                <div>
                    <h3 class="join_title">
                        <label for="resprice">가격대</label>
                    </h3>
                    <span class="box int_id"> <input type="text" id="resprice"
                                                     class="int" maxlength="20" name="resPrice">
				</span> <span class="error_next_box"></span>
                </div>

                <!-- 예약 가능 시간 -->
                <div>
                    <h3 class="join_title">
                        <label for="resname">예약 가능 시간</label>
                    </h3>

                    <h6>파트 1</h6>
                    <span class="box int_id"> <input type="time" class="time"
                                                     maxlength="10" name="resTimeStartArr"> ~ <input type="time" class="time"
                                                                                            maxlength="10" name="resTimeEndArr">
						</span>

                    <h6>파트 2</h6>
                    <span class="box int_id"> <input type="time" id="restime"
                                                     class="tim" maxlength="10" name="resTimeStartArr"> ~ <input type="time"
                                                                                                        id="restime"
                                                                                                        class="tim"
                                                                                                        maxlength="10"
                                                                                                        name="resTimeEndArr">
						</span> <span class="error_next_box"></span>

                    <h6>파트 3</h6>
                    <span class="box int_id"> <input type="time" id="restime"
                                                     class="tim" maxlength="10" name="resTimeStartArr"> ~ <input type="time"
                                                                                                        id="restime"
                                                                                                        class="tim"
                                                                                                        maxlength="10"
                                                                                                        name="resTimeEndArr">
						</span> <span class="error_next_box"></span>
                </div>

                <!-- 테이블 수 -->
                <div>
                    <h3 class="join_title">
                        <label for="twotable">2인 테이블 수</label>
                    </h3>
                    <span class="box int_id"> <input type="number" id="twotable"
                                                     class="int" name="resTwoTable" maxlength="20">
				</span> <span class="error_next_box"></span>
                </div>

                <!-- 테이블 수 -->
                <div>
                    <h3 class="join_title">
                        <label for="fourtable">4인 테이블 수</label>
                    </h3>
                    <span class="box int_id"> <input type="number" id="fourtable"
                                                     class="int" maxlength="20" name="resFourTable">
				</span> <span class="error_next_box"></span>
                </div>
                <!-- 테이블 수 -->
                <div>
                    <h3 class="join_title">
                        <label for="manyptable">다인 테이블 수</label>
                    </h3>
                    <span class="box int_id"> <input type="number" id="manyptable"
                                                     class="int" maxlength="20" name="resMayTable">
				</span> <span class="error_next_box"></span>
                </div>

                <!-- 식당 설명 -->
                <div>
                    <h3 class="join_title">
                        <label for="res_explain">식당 설명</label>
                    </h3>
                    <span class="res_explain"> <textarea cols="60" rows="10" name="resExplain"></textarea>
					</span> <span class="error_next_box"></span>
                </div>


                <!-- 배너 업로드 -->
                <div>
                    <h3 class="join_title">
                        <label for="banner">배너 업로드</label>
                    </h3>
                    <span class="box int_id"> <input type="file" id="banner"
                                                     class="int" maxlength="20" name="banner">
				</span> <span class="error_next_box"></span>
                </div>

                <!-- 내부 이미지 업로드 -->
                <div>
                    <h3 class="join_title">
                        <label for="resname">내부 이미지 업로드</label>
                    </h3>
                    <span class="box int_id"> <input type="file" id="innerimage"
                                                     class="int" multiple="multiple" name="innerimage">
				</span> <span class="error_next_box"></span>
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <!-- <button type="submit" id="btnJoin"
                        onclick="location.href='resmenu.jsp'">메뉴로</button> -->
                    <input id="btnJoin" type="submit" value="전송">
                </div>
            </div>
        </div>
        <!-- content-->
    </div>
    <!-- wrapper -->
</form>

</body>
</html>