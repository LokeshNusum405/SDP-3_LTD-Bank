<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form align='center' action="/sms/verifyOTP" method="POST">
<input type="hidden" id="otp" name="otp" value="${otp}">
<input type="hidden" id="phoneNumber" name="phoneNumber" value="${phoneNumber}">
<input type="text" id="user_otp" name="user_otp" Placeholder="Enter 6 - digits OTP">
<input type="submit" value="Submit">
</form>

<form align='center' action="/sms/resendOTP" method="POST">
<input type="hidden" id="phoneNumber" name="phoneNumber" value="${phoneNumber}">
<input type="submit" value="Resend OTP">
</form>


<h1>${phoneNumber}</h1>
</body>
</html>