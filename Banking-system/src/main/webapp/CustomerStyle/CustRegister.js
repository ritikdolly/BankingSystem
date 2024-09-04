function openNav() {
    document.getElementById("mySidenav").style.width = "350px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

function generateUsername() {
    const nameInput = document.getElementById('name').value;
    const usernameInput = document.getElementById('username');
    const accountInput = document.getElementById('accountnum');

    if (nameInput.trim() !== "") {
        const usernameBase = nameInput.toLowerCase().replace(/\s+/g, '');
        const randomSuffix = Math.floor(Math.random() * 100);
        const generatedUsername = usernameBase + randomSuffix;
        usernameInput.value = generatedUsername;

        const accountNumber = Math.floor(10000000000 + Math.random() * 90000000000);
        accountInput.value = accountNumber;
    } else {
        usernameInput.value = ""; 
        accountInput.value = ""; 
    }
}

// disappear

document.addEventListener('click', function(event) {
    var isClickInside = document.getElementById('mySidenav').contains(event.target) || 
                        document.getElementById('menu-bar').contains(event.target);
    var bodyBlur = document.getElementsByClassName("container")[0]; // Get the first element with class "container"

    if (!isClickInside) {
        closeNav();
        bodyBlur.style.filter = "none"; // Remove blur when clicking outside
    } else {
        bodyBlur.style.filter = "blur(10px)"; // Apply blur when clicking inside
    }
});

