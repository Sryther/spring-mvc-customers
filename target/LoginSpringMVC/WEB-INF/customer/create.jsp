<%@ page language="java" isELIgnored="false" contentType="text/html;charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <br>
	    <form method="POST">
	        <label for="firstName">Prénom :</label>
	        <input type="text" id="firstName" class="form-control" name="firstName" value="${form.getFirstName()}" />
	        <br>
	        <label for="lastName">Nom :</label>
	        <input type="text" id="lastName" class="form-control" name="lastName" value="${form.getLastName()}" />
	        <br>
	        <label for="email">Email :</label>
	        <input type="text" id="email" class="form-control" name="email" value="${form.getEmail()}" />
	        <br>
	        <label for="phone">Numéro de téléphone :</label>
	        <input type="text" id="phone" class="form-control" name="phoneNumber" value="${form.getPhoneNumber()}" />
	        <br>
	        <input type="submit" class="btn btn-success" value="Valider"> <input class="btn btn-danger" type="reset" value="Annuler">
	    </form>
    </div>
</body>
</html>