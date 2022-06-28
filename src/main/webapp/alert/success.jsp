<div class="alert alert-success alert-dismissible" id="d-none">
    <div id="message-alert">
        <button type="button" class="close" aria-label="Close" data-bs-dismiss="alert">
            <span aria-hidden="true" id="close">x</span>
        </button>
        <strong>Success! </strong>${requestScope["message"]}
    </div>
</div>

<script>
    document.getElementById("close").addEventListener("click", function (){
        document.getElementById("d-none").style.display = "none";
    });

    function fadeIn(el, el2, timeOut) {
        el.animate({
            opacity: 0
        }, {
            duration: timeOut,
            easing: "linear",
            iterations: 1,
            fill: "both"
        })
            .onfinish = function() {
            el2.innerHTML = "";
        }
    }
    window.onload = function() {
        let messageAlert = document.getElementById("message-alert");
        let footer = document.getElementById("d-none");
        fadeIn(footer, messageAlert, 20000);
        let btnClose = document.getElementById("close");
    }
</script>