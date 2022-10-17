<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
    </style>

    <title>PhoneBook | Add contact</title>
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>

<h1 class="m-4" style="font-family: 'Pacifico', cursive; color: #05516b; font-size: 35px; text-align: center">Add new contact</h1>
<div class="row d-flex justify-content-center">

    <div class="col-sm-4 col-xl-4 m-1">

    <form action="${pageContext.request.contextPath}/contacts/add" method="post" class="mt-2">

        <div class="mb-2">
            <label for="lastname-c" class="form-label">Lastname</label>
            <input type="text" class="form-control" id="lastname-c" name="lastname">
        </div>

        <div class="mb-2">
            <label for="firstname-c" class="form-label">Firstname</label>
            <input type="text" class="form-control" id="firstname-c" name="firstname">
        </div>

        <div class="mb-2">
            <label for="email-c" class="form-label">Email</label>
            <input type="text" class="form-control" id="email-c" name="email">
        </div>

        <div class="mb-2">
            <label for="phoneNumber-c" class="form-label">Phone number</label>
            <input type="text" class="form-control" id="phoneNumber-c" name="phoneNumber">
        </div>


        <div class="mb-2">
            <label for="pictureUrl-c" class="form-label">Picture url</label>
            <input type="text" class="form-control" id="pictureUrl-c" name="pictureUrl">
        </div>


        <div class="mb-2">
            <label for="birthDate-c" class="form-label">Birth date</label>
            <input type="date" class="form-control" id="birthDate-c" name="birthDate">
        </div>


        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button type="submit" class="btn mt-2" style="background-color: #a8eaa8; color:white">Create contact
        </button>

    </form>

</div>
</div>

</body>
</html>