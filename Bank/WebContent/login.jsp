<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<body>

	<%if(session.getAttribute("loginMSG")!=null){
		out.println(session.getAttribute("loginMSG"));
		session.removeAttribute("loginMSG");
	}
	%>

	<form action="loginCheck" method="post">

		���̵� : <input type="text" name="bankid"/>

		��й�ȣ : <input type="password" name="password"/><br/>

		<input type="submit" value="�α���">

		<input type="button" id="registerCustomer" value="ȸ������">

	</form>

	<script>
		var element = document.getElementById('registerCustomer');
		element.addEventListener('click',function(event){
			location.href='registerCustomer.jsp';
		});
	</script>

</body>

</html>