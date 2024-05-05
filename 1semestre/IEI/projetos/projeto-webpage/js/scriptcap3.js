
function displayText(buttonNumber) {
    var textElements = document.querySelectorAll("#zonaspraia p");
    textElements.forEach(function (element) {
        element.classList.add("hidden");
    });

    var textElement = document.getElementById("texto" + buttonNumber);
    textElement.classList.remove("hidden");
    
    document.querySelectorAll("button").forEach(function (button) {
		button.classList.remove("active")
	});
	
	document.getElementById("button" + buttonNumber).classList.add("active");	
}

document.addEventListener("DOMContentLoaded", function () {
    const highlightTexto = document.querySelectorAll(".hover-texto");
    const highlightImagens = document.querySelectorAll(".hover-imagem");

    highlightTexto.forEach((word, index) => {
        word.addEventListener("mouseover", function () {
            const imageURL = this.getAttribute("data-image");
            highlightImagens[index].src = imageURL;
            highlightImagens[index].style.transform = "scale(1.1)";
        });

        word.addEventListener("mouseout", function () {
            highlightImagens[index].style.transform = "scale(1)";
        });
    });
});

