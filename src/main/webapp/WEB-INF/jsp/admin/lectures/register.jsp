<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrovanje predavanja</title>
<style type="text/css"><%@ include file="/resources/css/styles.css" %> </style>
</head>
<body>

	<div class="sidenav">
		<a href="/api/v1/project/admin/home">Glavna</a>
		<a href="/api/v1/project/registration/home">Korisnici</a> 
		<a href="/api/v1/project/subjects/home" class="sidenav-sel">Predmeti</a>
		<a href="#">Opcija #3</a>
		<a href="/api/v1/project/admin/logs">Pregled logova</a>
		<br>
		<a href="/">Izloguj se</a>
	</div>

	<div class="main">
		<div class="header">
			<h2 class="title2 p-class">ADMIN : Registrovanje predavanja</h2>
			<p class="p-class">Ulogovani ste kao : <span class="username p-class">${ user.username } </span></p>
		</div>
		
		<br />
		
		<form action="/api/v1/project/lectures/register" method="post"> <!--  RUTIRANJE NIJE URADJENO -->
		
			<table>
				<tr>
					<td>Predmet</td>
					<td>
						<select name="idSubject" style="width: 400px">
							<option disabled selected value> -- odaberite predmet -- </option>
							<c:forEach items="${ subjects }" var="s">
								<option value="${ s.id }">${ s.name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>Nastavnik</td>
					<td>
						<select name="idTeacher" style="width: 400px">
							<option disabled selected value> -- odaberite nastavnika -- </option>
							<c:forEach items="${ teachers }" var="t">
								<option value="${ t.id }">${ t.firstName } ${ t.lastName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>Semestar</td>
					<td>
						<select name="semester" style="width: 400px">
							<option disabled selected value> -- odaberite semestar -- </option>
							<option value="WINTER">zimski</option>
							<option value="SUMMER">letnji</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Nastavna godina</td>
					<td><input type="text" name="year"  style="width: 390px" /></td>
				</tr>
				<tr>
					<td>
						<br />
						<input type="submit" value="      Registruj      " />
					</td>
				</tr>
			</table>
			
		</form>
		
		<span class="success">${ lectureRegisterSuccessMsg }</span> <!--  NIJE URADJENO -->
		<span class="error">${ lectureRegisterMsg }</span> <!--  NIJE URADJENO -->
		
	</div>
	
	<div class="footer">
	  	School System Project @ Razvoj informacionih sistema, 2021.
	</div>
	
</body>
</html>