
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>sdgf
</head>
<body>
<form action="/addAnswers.do" method="post">
<table>
    <tr>
        <td>问题:</td>
        <td style="width: 200px;background-color: aqua;">${questions.title}</td>
    </tr>
    <tr>
        <td>问题描述:</td>
        <td style="width: 200px;background-color: aqua;">${questions.detailDesc}</td>
    </tr>
    <tr>
        <td>网友回答：</td>
        <td></td>
    </tr>
    <c:forEach items="${answers}" var="as">
    <tr>
<td></td>
        <td style="width: 200px;background-color: aqua;">
                ${as.ansDate}<br/>
                ${as.ansContent}
        </td>

    </tr>
    </c:forEach>
    <tr>
        <td>我来回答：</td>
        <td><input type="text" name="ansContent"/></td>
    </tr>
    <tr>
        <td><input type="hidden" name="qid" value="${questions.id}"/></td>
        <td><input type="submit" value="提交"/><a href="/show.do">返回首页</a></td>
    </tr>
</table>
</form>
</body>
</html>

