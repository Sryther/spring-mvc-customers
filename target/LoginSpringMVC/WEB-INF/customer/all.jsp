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
        <c:if test="${success != null}">
            <div class="alert alert-success" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                ${success}
            </div>
        </c:if>
        <c:if test="${error != null}">
            <div class="alert danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                ${error}
            </div>
        </c:if>
        <br>
        <div>
		    <center><a href="/LoginSpringMVC/customer/create" class="btn btn-success">Créer un client</a></center>
        </div>
	    <br>
		<table class="table table-bordered table-striped">
		    <tr>
		        <th>
		           ID
		        </th>
		        <th>
		            Nom
		        </th>
		        <th>
		            Prénom
		        </th>
		        <th>
		            Email
		        </th>
		        <th>
		            Numéro de téléphone
		        </th>
		        <th></th>
		    </tr>
		    <c:forEach items="${customers}" var="customer" varStatus="loop">
			    <tr>
			        <td>
			          <b>${loop.index}</b>
			        </td>
			        <td>${customer.getLastName()}</td>
			        <td>${customer.getFirstName()}</td>
			        <td>${customer.getEmail()}</td>
			        <td>${customer.getPhoneNumber()}</td>
			        <td>
			          <center><a href="/LoginSpringMVC/customer/${loop.index}" class="btn btn-info">Voir</a></center>
		            </td>
			    </tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>