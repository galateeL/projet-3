<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel" style="font-family: 'Pacifico', cursive; color: #05516b; font-size: 30px; text-align: center">Delete contact</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete this contact?</p>
            </div>
            <div class="modal-footer">
                <form action="${pageContext.request.contextPath}/contacts/delete/${contact.id}" method="post">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Abandon</button>
                    <button type="submit" class="btn" style="background-color: #a8eaa8; color:white">Confirm</button>
                </form>
            </div>
        </div>
    </div>
</div>