<div class="alert alert-danger alert-dismissible danger" id="d-none">
    <button type="button" class="close" aria-label="Close" data-bs-dismiss="alert">
        <span aria-hidden="true" id="close">x</span>
    </button>
    <strong>Error! </strong>
    <c:forEach var="error" items="${errors}">
        <ul>
            <li>${error} </li>
        </ul>
    </c:forEach>
</div>

<script>
    document.getElementById("close").addEventListener("click", function (){
        document.getElementById("d-none").style.display = "none";
    });
</script>
