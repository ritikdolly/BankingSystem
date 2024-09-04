/**
 * 
 */	
    let captchaCode = "";

    function generate() {
        // Clear old input
        document.getElementById("outcap").value = "";

        // Access the element to store the generated captcha
        const captcha = document.getElementById("incap");
        captchaCode = "";

        const randomchar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        // Generate captcha of length 6 with random characters
        for (let i = 0; i < 6; i++) {
            captchaCode += randomchar.charAt(Math.floor(Math.random() * randomchar.length));
        }

        // Display generated captcha
        captcha.value = captchaCode;

        // Hide error message and disable submit button
        document.getElementById("errorMsg").style.display = "none";
        document.getElementById("submitBtn").disabled = true;
        
     // Set a timeout to reset the captcha after 10 seconds
        setTimeout(resetCaptcha, 20000);
    }

    function validateCaptcha() {
        const inputCaptcha = document.getElementById("outcap").value;
        const submitBtn = document.getElementById("submitBtn");
        const errorMsg = document.getElementById("errorMsg");

        // Enable submit button if captcha matches, otherwise show error message
        if (inputCaptcha === captchaCode) {
            submitBtn.disabled = false;
            errorMsg.style.display = "none";
        } else {
            submitBtn.disabled = true;
            errorMsg.style.display = "block";
        }
    }
    
    function resetCaptcha() {
        // Clear the CAPTCHA and input field
        document.getElementById("incap").value = "";
        document.getElementById("outcap").value = "";
        captchaCode = "";

        // Disable the submit button and hide error message
        document.getElementById("submitBtn").disabled = true;
        document.getElementById("errorMsg").style.display = "none";
    }