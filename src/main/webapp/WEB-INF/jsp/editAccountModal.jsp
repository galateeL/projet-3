<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel2">Edit contact</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/account-edit" method="post">

                    <div class="mb-2">
                        <label for="lastname-u" class="form-label">Lastname</label>
                        <input type="text" class="form-control" id="lastname-u" name="lastname" value="${user.lastname}">
                    </div>

                    <div class="mb-2">
                        <label for="firstname-u" class="form-label">Firstname</label>
                        <input type="text" class="form-control" id="firstname-u" name="firstName" value="${user.firstName}">
                    </div>

                    <div class="mb-2">
                        <label for="email-u" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email-u" name="email" value="${user.email}">
                    </div>

                    <div class="mb-2">
                        <label for="password-u" class="form-label">Password</label>
                        <input type="text" class="form-control" id="password-u" name="password">
                    </div>


                    <div class="mb-2">
                        <label for="pictureUrl-u" class="form-label">Picture url</label>
                        <input type="text" class="form-control" id="pictureUrl-u" name="pictureUrl" value="${user.pictureUrl}">
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Abandon</button>
                        <button type="submit" class="btn btn-primary">Confirm</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>