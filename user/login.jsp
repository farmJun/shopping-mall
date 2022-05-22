<%@page import="java.security.SecureRandom"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>
<% 
	SecureRandom random = new SecureRandom();
	String state = new BigInteger(130, random).toString();
	session.setAttribute("state", state);
%>

<div class="frame user-frm">
<article class="card-body" style="max-width: 400px; margin: auto;">
    <!-- 로그인 form태그 시작 -->
	<form method="post" action="user?cmd=login">
	<div class="form-group input-group fg-x400">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="username" class="form-control" placeholder="Id 입력" type="text" />
    </div> <!-- form-group// -->
    <div class="form-group input-group fg-x400">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password" class="form-control" placeholder="비밀번호 입력" type="password">
    </div> <!-- form-group// -->
    <div class="fg-x400 form-group">
        <button type="submit" class="btn btn-primary btn-block"> 로그인  </button>
    </div> <!-- form-group// -->
   	</form>
   	<!-- 로그인 form태그 끝 -->
   	
</article>
</div> <!-- card.// -->
<!--container end.//-->

<br><br>

<%@ include file="../layout/footer.jsp"%>