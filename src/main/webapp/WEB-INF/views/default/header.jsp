

<!-- default/header.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style type="text/css">
* {
   margin: 0;
}
.wrap{
   width: 1000px;
   margin: auto;
   text-align: center;
}
.header {
   width: 1000px;
}
.title {
   font-size: 50px;
   text-align: center;
   margin-top: 40px;
   padding-bottom: 20px;
}
.navdiv {
   width: 100%;
}
nav {
   width: 100%;
   background-color: olive;
}
nav ul {
   list-style: none;
   display: flex;
   justify-content: end;
}
nav ul li {
   padding: 10px;
}
nav ul li a {
   text-decoration: none;
   color: white;
}
nav ul li a:hover {
   color: orange;
}
</style>
</head>
<body>
   <div class="wrap">
      <div class="header">
         <h1 class="title">My Web</h1>
      </div>
   </div>
   <!-- // wrap -->
   <div class="navdiv">
      <div class="wrap">
         <nav>
            <ul>
               <li><a href="/root/index"> HOME </a></li>
                  <!-- li><a href="/root/member/login"> 로그인 </a></li> -->
               <li><a href="/root/member/memberInfo"> 회원정보 </a>
               		<%-- <c:if test="${loginUser != null }">
               			<a href="/root/member/memberInfo"> 회원정보 </a>
               		</c:if>
               		<c:if test="${loginUser == null }">
               			<a href="/root/member/login"> 회원정보 </a>
               		</c:if> --%>
               </li>
               <li>
               	<c:if test="${loginUser != null }">
               		<a href="/root/member/logout"> 로그아웃 </a>
               	</c:if>
               	<c:if test="${loginUser == null }">
               		<a href="/root/member/login"> 로그인 </a> 
               	</c:if>
               </li>
            </ul>
         </nav>
      </div>
   </div>
   <!-- // navdiv -->
</body>
</html>