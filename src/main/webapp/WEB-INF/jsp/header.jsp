<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>



<nav class="navbar navbar-expand-sm navbar-dark" style="background-color: #05516b">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/contacts/all"><img src="https://i.postimg.cc/jd7DNKVn/annuaire-1.png" alt="logo" style="height: 45px; width:45px"/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/contacts/add" style="color: white">Add</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)" style="color: white">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0)" style="color: white">Settings</a>
                </li>
            </ul>
            <form class="d-flex" method="GET" action="${pageContext.request.contextPath}/contacts/all">
                <input class="form-control me-2" type="text" placeholder="Search contact" name="keyword" value="${keyword}" id="keyword">
                <button class="btn btn" type="submit" style="background-color: white;color:gray">Search</button>
            </form>



        </div>
    </div>
</nav>