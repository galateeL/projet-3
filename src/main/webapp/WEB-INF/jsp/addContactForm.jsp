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


    <title>PhoneBook | Add contact</title>
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>

<h1>Add contact form</h1>
<div class="row">

    <form action="${pageContext.request.contextPath}/contacts/add" method="post">
<%--        <form action="${pageContext.request.contextPath}/contacts/add" method="post" enctype="multipart/form-data">--%>

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



        <button type="submit" class="btn" style="background: #ff5630; color: white">add
        </button>

    </form>


</body>
</html>