<%@ page import="java.util.Enumeration" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_insert_action</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String memberID = request.getParameter("memberID");
	String passwd = request.getParameter("passwd");
	String memberName = request.getParameter("memberName");
	String email = request.getParameter("email");
	String[] interest = request.getParameterValues("interest");
	String data = "";
	for (int i=0; i<interest.length; i++){
		data += interest[i]+" ";
	}	
	String zipcode = request.getParameter("zipcode");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	int birthYear = Integer.parseInt(request.getParameter("birthYear"));
	int birthMonth = Integer.parseInt(request.getParameter("birthMonth"));
	int birthDay = Integer.parseInt(request.getParameter("birthDay"));
	String mailYN = request.getParameter("mailYN");
	String smsYN = request.getParameter("smsYN");
	%>
	<table border="1">
		<tr>
			<th>name</th>
			<th>value</th>
		</tr>
		<tr>
			<td>memberID</td>
			<td> <%= memberID %></td>
		</tr>
		<tr>
			<td>passwd</td>
			<td> <%= passwd %></td>
		</tr>
		<tr>
			<td>memberName</td>
			<td> <%= memberName %></td>
		</tr>
		<tr>
			<td>email</td>
			<td> <%= email %></td>
		</tr>
		<tr>
			<td>interest</td>
			<td><%= data %></td>
		</tr>
		<tr>
			<td>zipcode</td>
			<td> <%= zipcode %></td>
		</tr>
		<tr>
			<td>address1</td>
			<td> <%= address1 %></td>
		</tr>		
		<tr>
			<td>address2</td>
			<td> <%= address2 %></td>
		</tr>
		<tr>
			<td>birthYear</td>
			<td> <%= birthYear %></td>
		</tr>
		<tr>
			<td>birthMonth</td>
			<td> <%= birthMonth %></td>
		</tr>
		<tr>
			<td>birthDay</td>
			<td> <%= birthDay %></td>
		</tr>
		<tr>
			<td>mailYN</td>
			<td> <%= mailYN %></td>
		</tr>
		<tr>
			<td>smsYN</td>
			<td> <%= smsYN %></td>
		</tr>
		<tr>
			<td>ip</td>
			<td> <%= request.getRemoteAddr() %></td>
		</tr>
	</table>
	INSERT INTO member VALUES 
('<%=memberID %>','<%=passwd %>','<%=memberName%>','<%= email%>', 
'<%= interest%>','<%= zipcode%>','<%= address1%>', '<%= address2%>',
<%= birthYear%>,<%= birthMonth%>,<%= birthDay%>, '<%= mailYN%>'
'<%= smsYN%>',' <%= request.getRemoteAddr() %>')
</html>