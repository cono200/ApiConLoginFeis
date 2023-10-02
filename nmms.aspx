<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nmms.aspx.cs" Inherits="iatoiarto1.nmms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio sesion</title>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '524611839871045',
                cookie: true,
                xfbml: true,
                version: 'v18.0'
            });

            FB.AppEvents.logPageView();

        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));


        function onLogin() {
            FB.login((response) => {
                if (response.authResponse) {
                    FB.api('/me?fields=email,name,picture', (response) => {
                        console.log(response);
                        // Redirige al usuario a otra vista después de iniciar sesión
                        window.location.href = "oooo.html";
                    })
                }
            })
        }



        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }

    </script>
</head>
<body>
    
<button onclick="onLogin();">Iniciar sesion feis</button>
    

</body>
</html>
