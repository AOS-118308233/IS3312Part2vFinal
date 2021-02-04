/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */    
            function fieldVerification() {
            var emailField = document.getElementById("email").value;
            var passField = document.getElementById("password").value;
            
            
            if (emailField === "") {
                document.getElementById("blankMsg").innerHTML = "THIS FIELD IS REQUIRED";
                return false;
            }
            
            if (passField === "") {
                document.getElementById("blankMsg").innerHTML = "THIS FIELD IS REQUIRED";
                return false;
            }
            
        }  


