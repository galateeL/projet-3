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
                <form action="${pageContext.request.contextPath}/contacts/edit/${contact.id}" method="post">

                    <div class="mb-2">
                        <label for="lastname-c" class="form-label">Lastname</label>
                        <input type="text" class="form-control" id="lastname-c" name="lastname" value="${contact.lastname}">
                    </div>

                    <div class="mb-2">
                        <label for="firstname-c" class="form-label">Firstname</label>
                        <input type="text" class="form-control" id="firstname-c" name="firstname" value="${contact.firstname}">
                    </div>

                    <div class="mb-2">
                        <label for="email-c" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email-c" name="email" value="${contact.email}">
                    </div>

                    <div class="mb-2">
                        <label for="phoneNumber-c" class="form-label">Phone number</label>
                        <input type="text" class="form-control" id="phoneNumber-c" name="phoneNumber" value="${contact.phoneNumber}">
                    </div>


                    <div class="mb-2">
                        <label for="pictureUrl-c" class="form-label">Picture url</label>
                        <input type="text" class="form-control" id="pictureUrl-c" name="pictureUrl" value="${contact.pictureUrl}">
                    </div>


                    <div class="mb-2">
                        <label for="birthDate-c" class="form-label">Birth date</label>
                        <input type="date" class="form-control" id="birthDate-c" name="birthDate" value="${contact.birthDate}">
                    </div>

            </div>
            <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Abandon</button>
                    <button type="submit" class="btn btn-primary">Confirm</button>
                </form>
            </div>
        </div>
    </div>
</div>




