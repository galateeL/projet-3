<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


        <title>PhoneBook | Contact list</title>
    </head>
    <body>
        <h1>Contact list</h1>

        <a href="${pageContext.request.contextPath}/contacts/add" class="btn btn-primary">New contact</a>

        <c:forEach items="${contacts}" var="contact">
            <p class="card-text">${contact.lastname} ${contact.firstname}</p>
            <p class="card-text">${contact.email}</p>
            <p class="card-text">${contact.birthDate}</p>

            <a href="${pageContext.request.contextPath}/contacts/details/${contact.id}" class="btn btn-primary">Detail</a>
        </c:forEach>


    </body>
</html>