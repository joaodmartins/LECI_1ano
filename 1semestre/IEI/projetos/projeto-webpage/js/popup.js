function togglePopup(popupId) {
    var popup = document.getElementById(popupId);
    popup.style.display = (popup.style.display === 'none' || popup.style.display === '') ? 'block' : 'none';
    document.getElementById('overlay').style.display = (popup.style.display === 'block') ? 'block' : 'none';
}

function closePopup() {
    document.querySelectorAll('.popup').forEach(function (popup) {
        popup.style.display = 'none';
    });
    document.getElementById('overlay').style.display = 'none';
}