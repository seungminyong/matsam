<%--
  Created by IntelliJ IDEA.
  User: rhanf
  Date: 2020-12-12
  Time: 오후 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--    <div class="wrapper1"> -->
<div class="calendar">
    <div class="month">
        <div class="prev" onclick="moveDate('prev')">
            <span>&#10094;</span>
        </div>
        <div>
            <h2 id="month"></h2>
            <p id="date_str"></p>
        </div>
        <div class="next" onclick="moveDate('next')">
            <span>&#10095;</span>
        </div>
    </div>
    <div class="weekdays">
        <div>Sun</div>
        <div>Mon</div>
        <div>Tue</div>
        <div>Wed</div>
        <div>Thu</div>
        <div>Fri</div>
        <div>Sat</div>
    </div>
    <div class="days"></div>
</div>
<form action="ResNextSubmit">
    <input type="hidden" name="no" value="${no}"/>
    <input type="hidden" name="lo_name" value="${lo_name}"/>
    <input type="hidden" name="tr_name" value="${tr_name}"/>
    <input type="hidden" name="type" value="${type}"/>
    <table class="type09">
        <thead>

        <tr>
            <th scope="cols">선택</th>
            <th scope="cols">예약시간</th>
            <th scope="cols">예약하기</th>
            <th scope="cols">인원수</th>
        </tr>

        </thead>
        <tbody>

        <tr>
            <td><input type="radio" name="restime" value="05" /></td>
            <td><button id="button">05:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="07" /></td>
            <td><button id="button">07:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="09" /></td>
            <td><button id="button">09:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="11" /></td>
            <td><button id="button">11:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="15" /></td>
            <td><button id="button">15:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="17" /></td>
            <td><button id="button">17:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="19" /></td>
            <td><button id="button">19:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        <tr>
            <td><input type="radio" name="restime" value="21" /></td>
            <td><button id="button">21:00</button></td>
            <td>예약가능</td>
            <td>10 / 30</td>
        </tr>
        </tbody>
    </table>
    <input type="submit" value="다음단계"/>
</form>

<script type="text/javascript" src="<c:url value="/admin_assets/js/jquery/jquery-ui.min.js"/>"/>
<script type="text/javascript" src="<c:url value="/admin_assets/js/jquery/jquery-3.5.1.js"/>"/>
<script>
    var dt = new Date();
    function renderDate() {
        dt.setDate(1);
        var day = dt.getDay();
        var today = new Date();
        var endDate = new Date(dt.getFullYear(), dt.getMonth() + 1, 0)
            .getDate();

        var prevDate = new Date(dt.getFullYear(), dt.getMonth(), 0)
            .getDate();
        var months = [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
            "9월", "10월", "11월", "12월" ]
        document.getElementById("month").innerHTML = months[dt.getMonth()];
        document.getElementById("date_str").innerHTML = dt.toDateString();
        var cells = "";
        for (x = day; x > 0; x--) {
            cells += "<div class='prev_date'>" + (prevDate - x + 1)
                + "</div>";
        }
        console.log(day);
        for (i = 1; i <= endDate; i++) {
            if (i == today.getDate() && dt.getMonth() == today.getMonth())
                cells += "<div class='today'>" + i + "</div>";
            else
                cells += "<div>" + i + "</div>";
        }
        document.getElementsByClassName("days")[0].innerHTML = cells;

    }

    function moveDate(para) {
        if (para == "prev") {
            dt.setMonth(dt.getMonth() - 1);
        } else if (para == 'next') {
            dt.setMonth(dt.getMonth() + 1);
        }
        renderDate();
    }


</script>
</body>
</html>
