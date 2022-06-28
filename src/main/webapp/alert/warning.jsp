<div class="alert alert-warning alert-dismissible" id="d-none">
    <button type="button" class="close" aria-label="Close" data-bs-dismiss="alert">
        <span aria-hidden="true" id="close">x</span>
    </button>
    <strong>Error! </strong>${requestScope["message"]}
</div>

<script>
    document.getElementById("close").addEventListener("click", function (){
        document.getElementById("d-none").style.display = "none";
    });
</script>