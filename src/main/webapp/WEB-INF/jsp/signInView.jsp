<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/css/style.css" rel="stylesheet"/>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
    </style>

    <title>Book project | Sign in</title>
</head>
<body>

<h1 class="m-5" style="font-family: 'Pacifico', cursive; color: #05516b; font-size: 35px; text-align: center">Sign in</h1>

<div class="row d-flex justify-content-center">
    <div class="col-sm-4 col-xl-4 m-1">
    <form method="post" action="${pageContext.request.contextPath}/signin">
        <div class="mb-3">
            <label class="form-label" for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email" required>
        </div>
        <div class="mb-3">
            <label class="form-label" for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password" required>
        </div>



        <div class="text-center mb-3">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit" class="btn" style="background-color: #05516b; color: white">Sign in</button>
        </div>
    </form>
</div>
</div>

</body>
</html>