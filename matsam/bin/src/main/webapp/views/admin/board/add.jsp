<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-14
  Time: 오후 6:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <!-- Vendor CSS Files -->
    <link type="text/css" href="<c:url value="/admin_assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/icofont/icofont.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>"
          rel="stylesheet">
    <link type="text/css" href="<c:url value="/admin_assets/vendor/venobox/venobox.css"/>" rel="stylesheet">

    <!-- Costumize CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/css/style.css"/>">

    <!-- CkEditor Sample -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/admin_assets/js/ckeditor5/sample/css/sample.css"/>">
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

        .table input[type=text] {
            width: 100%;
        }

        .table tbody tr, .table tbody tr td {
            padding: 10px;
        }

        .table select {
            width: 100%;
            height: 48px;
        }

        .table th {
            line-height: 48px;
        }

        .wrapper {
            width : 900px;
            height : 100%;
            margin : 0 auto;
        }

        textarea {
            height : 600px;
        }
    </style>
</head>
<body>
<%@include file="/views/admin/inc/header.jsp" %>
<section class="breadcrumbs">
    <div class="container">

        <div class="d-flex justify-content-between align-items-center">
            <h2>게시물 추가</h2>
            <ol>
                <li><a href="<c:url value="/adm/main"/>">메인</a></li>
                <li><a href="<c:url value="/adm/board/main"/>">게시물 관리</a></li>
                <li>게시물 추가</li>
            </ol>
        </div>

    </div>
</section><!-- End Breadcrumbs Section -->
<form:form id="" modelAttribute="BoardVO" method="post" action="/adm/board/add">
    <div class="wrapper">
        <table class="table">
            <thead class="thead-dark">
            <tr></tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">
                    <form:input path="boardTitle" id="resname"/>
                </td>
            </tr>
            <tr>
                <th scope="row">분류</th>
                <td>
                 <span class="box">
                     <form:select path="label" cssClass="sel">
                         <form:option value="B01">사용자 공지사항</form:option>
                         <form:option value="B04">사장 공지사항</form:option>
                         <form:option value="B03">매거진</form:option>
                     </form:select>
				 </span>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <form:textarea path="boardContent" id="editor"></form:textarea>
                </td>
            </tr>
            <tr>
                <td colspan="4" align="right">
                    <input class="btn btn-light" type="submit" value="등록"/>
                    <input class="btn btn-dark" type="button" value="취소" onclick="location.href='/adm/board/main'"/>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</form:form>


<script src="<c:url value="/admin_assets/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/jquery.easing/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/php-email-form/validate.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/jquery-sticky/jquery.sticky.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/waypoints/jquery.waypoints.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/counterup/counterup.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/admin_assets/vendor/venobox/venobox.min.js"/>"></script>

<script type="text/javascript" src="<c:url value="/admin_assets/js/ckeditor5/ckeditor.js"/>"></script>
<script type="text/javascript" src="<c:url value="/admin_assets/js/ckeditor5/UploadAdapter.js"/>"></script>

<script>
    function MyCustomUploadAdapterPlugin(editor) {
        editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
            return new UploadAdapter(loader)
        }
    }


    ClassicEditor
        .create(document.querySelector('#editor'), {
            extraPlugins: [MyCustomUploadAdapterPlugin],
            //toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
        })
        .then(editor => {
            window.editor = editor;
        })
        .catch(err => {
            console.error(err.stack);
        });
</script>
</body>
</body>
</html>
