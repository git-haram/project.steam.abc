<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" href="./img/webIcon.png" type="image/x-icon">
<title>ABC_MART</title>

<link rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/join.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="./js/insert.js"> </script>

</head>

<body>

<div class="imgBlank">

<span class="blank"> 
<a href="./abc_main.jsp"> <img name="ABCMain" src="./img/ABC.png" class="image"> </a>
</span>

<span class="blank"> 
<span>
	<a href="./CartSelectDetail?mid=${sessionID}"> <img name="cartMain" src="./img/cart-symbol.png" class="icon"> </a>
</span>
 

<c:if test="${sessionID eq 'admin'}">


<span>
	<a href="./MemberInquiryAll"> <img name="Members" src="./img/member-symbol.png" class="icon"> </a>
</span>

</c:if>


<span>
	<a href="./MemberJoin"> <img name="JoinMain" src="./img/join-symbol.png" class="icon"> </a>
</span>

<c:choose>

<c:when test="${empty sessionID}">

<span>
	<a href="./MemberLogIn"> <img name="LogInMain" src="./img/login-symbol.png" class="icon"> </a>
</span>

</c:when>
<c:otherwise>

<span>
	<a href="./MemberLogOut"> <img name="LogOutMain" src="./img/logout-symbol.png" class="icon"> </a>
</span>

</c:otherwise>

</c:choose>

</span>

</div>

<div class="navigator">

<span class="navBlankLeft">
<span class="navContentL">
<a href="./ProductSelect" style="color: yellow"> <font class="fontInterval">상품</font> </a>
<a href="./EventSelect" style="color: yellow"> <font class="fontInterval">기획전</font> </a>
<a href="./ReviewSelect" style="color: yellow"> <font class="fontInterval">상품리뷰</font> </a>
</span>
</span>

<span class="navBlankRight">
<span class="navContentR">
<a href="./MyPageMain" style="color: white"> <font class="fontInterval">마이페이지</font> </a>
<a href="./CartSelectDetail?mid=${sessionID}" style="color: white"> <font class="fontInterval">장바구니</font> </a>
<a href="./CustomerListPage" style="color: white"> <font class="fontInterval">고객센터</font> </a>
</span>
</span>

</div>

<body>
	<form id="inspection" name="inspection" action="./MemberInsertView"
		method="post" enctype="application/x-www-form-urlencoded">

		<fieldset class="border">
			<br>
			<div class="div4">
				<h1 align="center">회원 등록</h1>
			</div>

			<div class="div3">
				<p>
					<label for="ename">이름<font color="red">*</font>
					</label> <input class="custom" type="text" id="ename" name="mname"
						size="167" placeholder="한글,영문만 입력해주세요.">
				</p>
			</div>

			<div class="div3">
				<p>
					<label for="eid">아이디<font color="red">*</font>
					</label> <input class="custom" type="text" id="eid" name="mid"
						maxlength="20" size="167"
						placeholder="아이디를 입력해주세요 (영문,숫자 사용 3~20자)">
				</p>
			</div>
			<div class="div3">
				<p>
					<label for="password">비밀번호<font color="red">*</font>
					</label> <input class="custom" type="password" id="password"
						name="mpw" size="167"
						placeholder="비밀번호를 입력해 주세요.(특수문자를 포함한 영문,숫자  10~20자)">
				</p>
			</div>
			<div class="div3">
				<p>
					<label for="pw">비밀번호 확인<font color="red">*</font>
					</label> <input class="custom" class="p2" type="password" id="pw" name="pwck"
						size="167" placeholder="비밀번호를 재입력해 주세요.">
				</p>
			</div>
			
			<div class="div3" id="pwConfirm">
				<font size="2px" color="red">※비밀번호가 일치하지 않습니다.</font>
			</div>
			<div class="div3" id="pwConfirm2">
				<font size="2px" color="green">※비밀번호가 일치합니다.</font>
			</div>
			
			<div class="div3" id="gendercheck">
				<label for="gender"> 성별 <font color="red">*</font> &nbsp;
				</label> 남<input class="custom" type="radio" id="gender" name="mgender" value="남">
				여<input class="custom" type="radio" id="gender" name="mgender" value="여">
			</div>
			
			<br>
						
			<div class="div3">
				<p>
					<label for="eMail">이메일<font color="red">*</font>
					</label> <input class="custom" type="email" id="eMail" name="memail"
						placeholder="이메일 주소를 입력해 주세요." size="60"> <select
						name="job" id="job">
						<option value="직접">직접입력
						<option value="네이버">naver.com
						<option value="다음">daum.com
						<option value="구글">google.com
					</select>
				</p>
				
				<br>

			</div>
			<div class="div3">
				<p>
					<label for="phoneNumber">휴대폰 번호<font color="red">*</font>
					</label> <input class="custom" type="text" id="phoneNumber"
						name="mphonenum" size="68" placeholder="휴대폰 번호를 '-'없이 입력해주세요.">
				</p>
					<br>
			</div>

			<div>

				<div class="find-btn">

					<br> <br> <br> <br>
					 
					<button class="reset" type="button" style="cursor: pointer;"
						onclick="alerts()">취소</button>
					<input class="esa" style="cursor: pointer;" type="submit"
						value="회원등록">
				</div>
			</div>

		</fieldset>
	</form>
		
		<br> <br>
		
		<footer class="bottom">

		</footer>

</body>
</html>