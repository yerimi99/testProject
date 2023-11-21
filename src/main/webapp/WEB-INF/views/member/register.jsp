



<!-- member/register.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp</title>
<!--  
	# Daum 우편번호 API
	- https://postcode.map.daum.net/guide
-->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" 
		integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  		crossorigin="anonymous"></script>
<script type="text/javascript">
function doumPost(){
	new daum.Postcode({
        oncomplete: function(data) {
            var addr="";
            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $("#addr1").val(data.zonecode);
            $("#addr2").val(addr);
            // 커서를 상세주소 필드로 이동한다.
          	$("#addr3").focus();
        }
    }).open();
}

function register(){
	addr1 = $("#addr1").val();
	addr2 = $("#addr2").val();
	addr3 = $("#addr3").val();
	addr1 = addr1 + "/" + addr2 + "/" + addr3;
	$("#addr1").val(addr1);
	register_form.submit();
}
</script>
<style type="text/css">
table, th, td {
	border: 1px solid gray;
	border-collapse: collapse;
}
.member_table {
	margin: 0 auto;
	width: 500px;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="wrap">
		<h1>회원 가입</h1>
		<br/>
		<form name="register_form" action="register" method="post">
			<table class="member_table">
				<tr>
					<th> 아이디 </th>
					<td><input type="text" name="id" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<th> 비밀번호 </th>
					<td><input type="password" name="pw" placeholder="비밀번호 입력"/></td>
				</tr>
				<tr>
					<th> 주 소</th>
					<td>
						<input type="text" id="addr1" name="addr" placeholder="우편번호" readonly/>
						<input type="button" class="btn btn-info" value="우편번호 찾기" onclick="doumPost()"/><br/>
						<input type="text" id="addr2" placeholder="주소" readonly/>
						<input type="text" id="addr3" placeholder="상세주소"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" onclick="register()" value="회원가입"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>









































