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
    <html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <title>Consulta JSP</title>
        <link rel="stylesheet" href="home.css">
        <style>
            tr:nth-child(even) {
                background-color: lightgray;
            }

            tr:hover {
                background-color: #6495ED;
            }
        </style>
    </head>

    <body>
        <nav id="menu">
        <div class="logo-container">
            <a href="home_logado.jsp">
                <img src="GS IMPORTS.jpg" alt="GS IMPORTS" height="80">
                <span class="logo-text">GS IMPORTS</span>
            </a>
        </div>        
    </nav>
        <% 
            String database="web" ; 
            String endereco="jdbc:mysql://localhost:3306/" + database; 
            String usuario="root" ;
            String senha="" ; String driver="com.mysql.jdbc.Driver" ; 

            Class.forName(driver); Connection conexao;

            conexao=DriverManager.getConnection(endereco, usuario, senha); 

            String sql="SELECT * FROM usuarios" ;
            PreparedStatement stm=conexao.prepareStatement(sql); 
            ResultSet dados=stm.executeQuery(); 
            out.print("<table border='1' width='500' style='margin: 0 auto;'>");
            out.print("<tr>");
                out.print("<th>Codigo</th>");
                out.print("<th>Nome</th>");
                out.print("<th>Sobrenome</th>");
                out.print("<th>Email</th>");
                out.print("</tr>");
            while (dados.next()) {
            out.print("<tr>");
                out.print("<td>");
                    out.print(dados.getString("codigo"));
                    out.print("</td>");
                out.print("<td>");
                    out.print(dados.getString("nome"));
                    out.print("</td>");
                out.print("<td>");
                    out.print(dados.getString("sobrenome"));
                    out.print("</td>");
                out.print("<td>");
                    out.print(dados.getString("email"));
                    out.print("</td>");
                out.print("</tr>");
            }
            out.print("</table>");

            %>
    </body>

    </html>
    <% } %>