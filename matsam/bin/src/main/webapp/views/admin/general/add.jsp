
<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-11
  Time: 오전 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>로그인</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Vendor CSS Files -->
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>" rel="stylesheet">
    <link  type="text/css" href="<c:url value="/admin_assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Costumize CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/css/style.css"/>">
    <style>
        .row {
            margin-top: 5px;
        }

        .card img {
            width: 100%;
        }

        .card-img-top {
            width: 100%;
        }

        .table input{
            width : 100%;
        }

        .table tbody tr , .table tbody tr td{
            padding : 10px;
        }

        .table select {
            width : 100%;
            height : 48px;
        }

        .table th {
            line-height: 48px;
        }
    </style>
</head>
<body>
<%@include file="/views/admin/inc/header.jsp"%>
<div id="main">
    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>관리자 추가</h2>
                <ol>
                    <li><a href="main.html">메인</a></li>
                    <li><a href="adm-mng.html">관리자 관리</a></li>
                    <li>관리자 추가</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->
    <section class="more-services section-bg">
        <div class="wrapper d-flex align-items-stretch">
            <!-- Page Content  -->
            <div id="content" class="p-4 p-md-5 pt-5" style="margin : 0 auto;">
                <div class="info">
                    <form action="" method="post"name="frm">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">관리자 이름</th>
                                <td colspan="3">
                                    <input type="text" id="resname" name="admName" maxlength="20">
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">아이디</th>
                                <td colspan="3"><input type="text" name="admId"></td>
                            </tr>

                            <tr>
                                <th scope="row">비밀번호</th>
                                <td colspan="3"><input type="text" name="admPassword" maxlength="20"></td>
                            </tr>
                            <tr>
                                <th scope="row">비밀번호 확인</th>
                                <td colspan="3"><input type="text" ></td>
                            </tr>
                            <tr>
                                <th scope="row">전화번호</th>
                                <td>
                                    <span class="box">
                                        <select id="localc" class="sel">
                                            <option>지역번호</option>
                                            <option value="01">02</option>
                                            <option value="02">031</option>
                                            <option value="03">065</option>
                                            <option value="04">123</option>
                                            <option value="05">456</option>
                                            <option value="06">333</option>
                                            <option value="07">55</option>
                                            <option value="08">99</option>
                                            <option value="09">001</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
								        </select>
							        </span>
                                </td>

                                <td>
                                    <input type="text" id="middlephone" name="admPhone" class="int" maxlength="4">
                                </td>
                            </tr>


                            <tr>
                                <td colspan="4" align="right">
                                    <input class="btn btn-light" type=submit" value="등록"/>
                                    <input class="btn btn-dark" type="button" value="취소" onclick="gogo()"/>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>


                </div>


            </div>
        </div>

    </section><!-- End More Services Section -->

</div>
</body>
</html>
