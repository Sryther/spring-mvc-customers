<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html;
	charset=ISO-8859-1">
	<title>Mon espace</title>
	<link type="text/css" rel="stylesheet" href="styles.css" />
</head>
<body>
    <div class="container">
	    <h1>${customer.getLastName()} ${customer.getFirstName()}</h1>
	    <address>
		  <strong>${customer.getEmail()}</strong><br>
		  <abbr title="Numéro de téléphone">Tel :</abbr> ${customer.getPhoneNumber()}
		</address>
		<br>
	   <a href="/LoginSpringMVC/customer/${id}/delete" class="btn btn-danger">Supprimer</a>
	</div>
</body>
</html>