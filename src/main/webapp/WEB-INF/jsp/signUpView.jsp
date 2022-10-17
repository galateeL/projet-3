<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/css/style.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Book project | Sign up</title>
</head>
<body>
<h1>Sign up</h1>

<form:form action="${pageContext.request.contextPath}/signup" method="post" modelAttribute="createUser">

    <div class="mb-3">
        <label class="form-label" for="lastname-u">Lastname</label>
        <form:input type="lastname" class="form-control" id="lastname-u" placeholder="Enter your lastname" path="lastname" required="true"/>
            <%--        <form:errors path="lastName" cssClass="alert alert-danger"></form:errors>--%>
    </div>

    <div class="mb-3">
        <label class="form-label" for="lastname-u">Firstname</label>
        <form:input type="firstName" class="form-control" id="firstname-u" placeholder="Enter your firstname" path="firstName" required="true"/>
            <%--        <form:errors path="firstName" cssClass="alert alert-danger"></form:errors>--%>
    </div>

    <div class="mb-3">
        <label class="form-label" for="email">Email</label>
        <form:input  id="email" type="email" class="form-control" placeholder="Enter your email" path="email" required="true"/>
        <form:errors path="email" cssClass="alert alert-danger"></form:errors>
    </div>


    <div class="mb-3">
        <label class="form-label" for="password">Password</label>
        <form:input type="password" class="form-control" id="password" placeholder="Enter your password" path="password" required="true"/>
        <form:errors path="password" cssClass="alert alert-danger"></form:errors>
    </div>


    <div class="mb-3">
        <label class="form-label" for="pictureUrl-u">Profil picture</label>
        <form:input type="pictureUrl" class="form-control" id="pictureUrl-u" placeholder="Enter profil picture url" path="pictureUrl" required="true"/>
<%--        <form:errors path="pictureUrl" cssClass="alert alert-danger"></form:errors>--%>
    </div>


    <div class="text-center mb-3">
        <form:button type="submit" class="btn btn-primary">Sign up</form:button>
    </div>



    <!--<spring:hasBindErrors name="createUser">
        <c:forEach var="error" items="${errors.allErrors}">
            <spring:message code="${error.code}"
                            arguments="${error.arguments}"
                            text="${error.defaultMessage}"/><br/>
        </c:forEach>
    </spring:hasBindErrors>-->


</form:form>




   <!-- <form method="post" action="${pageContext.request.contextPath}/signup">

        <div class="mb-3">
            <label class="form-label" for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email" required>
        </div>


        <div class="mb-3">
            <label class="form-label" for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>



        <div class="text-center mb-3">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-primary">Sign up</button>
        </div>
    </form>-->


</body>
</html>