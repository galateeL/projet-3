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

    <title>PhoneBook | Contact detail</title>
</head>
<body>

<header>
    <jsp:include page="header.jsp"/>
</header>

<div class="row d-flex justify-content-center">


    <div class="col-sm-4 col-xl-4 m-1">

        <div class="card mt-5" style="border-radius: 15px;">
            <div class="card-body text-center">
                <div class="mt-3 mb-4">
                    <img src="${contact.pictureUrl}"
                         class="rounded-circle img-fluid" style="width: 100px; height: 100px; object-fit: cover"/>
                </div>
                <h4 class="mb-2"
                    style="font-family: 'Pacifico', cursive; color: #05516b; font-size: 30px; text-align: center">${contact.firstname} ${contact.lastname}</h4>
                <p class="text-muted mb-4">${contact.phoneNumber}<span class="mx-2">|</span> ${contact.email}</></p>
                <img src="https://i.postimg.cc/vmFhc5mC/cake.png" alt="" style="height: 20px"/>
                <p class="text-muted mb-4">${contact.birthDate}</p>


                <jsp:include page="./deleteContactModal.jsp"/>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                        style="background-color: #ff3b48; color:white ">
                    Delete contact
                </button>


                <jsp:include page="./editContactModal.jsp"/>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2"
                        style="background-color: #05516BFF; color:white">
                    Edit contact
                </button>


            </div>
        </div>

    </div>
</div>


</body>
</html>