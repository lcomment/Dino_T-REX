<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.Domain.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Dino T-REX HomePage </title>
	<link rel="stylesheet" href="resources/member.css" type="text/css"></link>
	<script>
		alert('로그인에 성공하셨습니다');
	</script>
</head>
<body>
	<header> Dino T-REX </header>
	
	<div>
	
		<%	
			MemberVO mb = (MemberVO)request.getAttribute("member");
			if(mb == null){
				mb = null;
			}else {
				application.setAttribute("member", mb);
			}
			MemberVO member = (MemberVO)application.getAttribute("member");
		%>
		<br>
		Member Information <br>
		<table>
		<tr> <td>계정</td> <td>이름</td> <td>국적</td> <td>나이</td> <td>핸드폰</td> <td>메일주소</td></tr>
			<tr> 
				<td><%=member.getId() %></td> 
				<td><%=member.getUsername() %></td> 
				<td><%=member.getNation() %></td> 
				<td><%=member.getOld() %></td> 
				<td><%=member.getMobile() %></td> 
				<td><%=member.getEmail() %></td>
			</tr>
		</table>
	</div>
	<div align="center">
			<form action="http://localhost:8080/hyunseok_free/MemberServlet?cmd=game" method="post">
				<input type="text" name="id" value="<%=member.getId() %>" readonly >
				<input type="submit" name="submit" value="Game Start" />
			</form>
			<button type="button" onclick="location.href='http://localhost:8080/hyunseok_free/MemberServlet?cmd=list' ">Rating</button>
	</div>
		<div align="center">
			<button type="button" onclick="location.href= 'http://localhost:8080/hyunseok_free/MemberServlet?cmd=update&id=<%=member.getId() %>' ">Edit Info</button>
			<button id="btn" type="button" formmethod="GET" onclick="location.href= 'http://localhost:8080/hyunseok_free/MemberServlet?cmd=delete&id=<%=member.getId() %>' ">Leave account</button>
		</div>
</body>
</html>