<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_insert</title>
<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
<script src="./member.js" defer></script>
</head>
<body>
	<form name="member_insert" id="member_insert" method="post">
		<p>회원 아이디	: <input type="text" name="memberID"></p>
		<p>비밀번호	: <input type="password" name="passwd">
					  <input type="password" name="passwdCheck"> </p>
		<p>이름		: <input type="text" name="memberName"></p>
		<p>이메일		: <input type="text" name="email"></p>
		<p>관심사항	: 영화<input type="checkbox" name="interest" value="영화" checked>
					  독서<input type="checkbox" name="interest" value="독서">
					  수영<input type="checkbox" name="interest" value="수영">
	  				  등산<input type="checkbox" name="interest" value="등산"></p>
		<p>우편번호	: <input name="zipCode" id="zipcode" size="10" maxlength="7" readonly>
					  <span onclick="execDaumPostcode();" style="cursor:pointer;">우편번호 검색</span></p>
		<p>집 주소 1	: <input name="address1" id="address01" size="70" maxlength="70" readonly></p>
		<p>집 주소 2	: <input name="address2" id="address02" size="70" maxlength="70"></p>
		<tr>
			<td>태어난 해</td>
			<td><input type="text" name="birthYear"></td>
		</tr>
		<p>태어난 월	: <input type="text" name="birthMonth"></p>
		<p>태어난 일	: <input type="text" name="birthDay"></p>
		<p>메일 수신 여부 : YES<input type="radio" name="mailYN" value="Y" checked>
						NO<input type="radio" name="mailYN" value="N"></p>
		<p>문자 수신 여부 : YES<input type="radio" name="smsYN" value="Y" checked>
						NO<input type="radio" name="smsYN" value="Y"></p>

		<p><input type="button" id="button" value="가입하기"></p>
	</form>

</body>
</html>