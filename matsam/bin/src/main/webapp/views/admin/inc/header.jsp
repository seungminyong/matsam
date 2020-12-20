<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- ======= Header ======= -->
<header id="header">
    <div class="container d-flex">

        <div class="logo mr-auto">
            <h1 class="text-light"><a href="<c:url value="/adm/main"/>"><span>LOGO</span></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="main.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        </div>

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li><a href="<c:url value="/adm/general/main"/>">관리자 관리</a></li>
                <li><a href="<c:url value="/adm/user/main"/>">회원 관리</a>
                </li>
                <li><a href="store-list.html">가게 관리</a></li>
                <li><a href="<c:url value="/adm/board/main"/>">게시물 관리</a></li>
                <li><a href="inquiry-list.html">문의 관리</a></li>
                <li><a href="decl-mng.html">신고 관리</a></li>

                <li><a href="#contact">정산</a></li>
                <li class="drop-down"><a href="">기타</a>
                    <ul>
                        <li><a href="#">해쉬태그 관리</a></li>
                        <li><a href="#">분류 관리</a></li>
                        <li><a href="#">쿠폰 관리</a></li>
                        <li><a href="#">QNA</a></li>
                        <li><a href="#">배너 관리</a></li>
                        <li class="drop-down"><a href="#">Drop Down 2</a>
                            <ul>
                                <li><a href="#">Deep Drop Down 1</a></li>
                                <li><a href="#">Deep Drop Down 2</a></li>
                                <li><a href="#">Deep Drop Down 3</a></li>
                                <li><a href="#">Deep Drop Down 4</a></li>
                                <li><a href="#">Deep Drop Down 5</a></li>
                            </ul>
                        </li>

                    </ul>
                </li>

                <li style="margin-left : 50px;">
                    <a href="/adm/general/detail/${authInfo.admConno}" style="">${authInfo.admName} 관리자님</a>
                </li>
                <li>
                    <a href="/adm/logout">로그아웃</a>
                </li>
            </ul>
        </nav><!-- .nav-menu -->

    </div>
</header><!-- End Header -->