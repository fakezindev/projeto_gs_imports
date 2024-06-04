<%@page language="java" import="java.sql.*" %>

    <% if(session.getAttribute("usuario")==null ) { %>

        <head>
            <link rel="stylesheet" href="login.css">
        </head>
        <div class="login-container">
            <a href="home.html">
                <img src="GS IMPORTS.jpg" height="80" class="center-image" alt="Logo">
            </a>
            <h2>Conteudo de acesso restrito</h2>
            <a href="login.html">
                <button type="button">Fazer Login</button>
            </a>
        </div>
        <% } else { %>
            <!DOCTYPE html>
            <html lang="pt-br">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Administrador</title>
                <link rel="stylesheet" href="login.css">
                <style>
                    button {
                        margin-top: 10px;
                    }
                </style>
                <script>
                    function verificarSenha() {
                        var senhaDigitada = document.getElementById("txtsenha").value;

                        // Convertendo a senha para minúsculas para fazer uma comparação case-insensitive
                        var senhaMinuscula = senhaDigitada.toLowerCase();

                        // Verificando se a senha é "eniac" ou "ENIAC"
                        if (senhaMinuscula == "eniac") {
                            window.location.href = "consulta.jsp";
                        } else {
                            alert("Senha incorreta. Tente novamente.");
                        }
                    }
                </script>
            </head>

            <body>
                <div class="login-container">
                    <a href="home_logado.jsp">
                        <img src="GS IMPORTS.jpg" height="80" class="center-image" alt="Logo">
                    </a>
                    <h2>Digite a senha de administrador</h2>
                    <input type="password" id="txtsenha" name="txtsenha" required>
                    <button onclick="verificarSenha()">Entrar</button>
                    <p>Dica: Centro Universitario _ _ _ _ _</p>
                </div>
            </body>

            </html>
            <% } %>