<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script language="javascript">
function back(){
	location.href="My"
	
}
</script>
</head>
<body>
<h3>ȸ������</h3>
<%if(session.getAttribute("registerCustomerMSG")!=null){
		out.println(session.getAttribute("registerCustomerMSG"));
		session.removeAttribute("registerCustomerMSG");
	}
%>
<form action="registerCustomer" method="post">
	�̸� : <input type="text" name="name"/><br/>
	�ֹε�Ϲ�ȣ : <input type="text" name="pinnum1" maxlength="6"/>-<input type="password" name="pinnum2" maxlength="7"/><br/>
	�ּ� : <input type="text" name="address"><br/>
	���̵� : <input type="text" name="id"/><br/>
	��й�ȣ : <input type="password" name="password"/><br/>
	<input type="submit" value="����"/>
</form>
</body>
</html>