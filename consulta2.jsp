<%@page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Bem-vindo!</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <%

        if(session.getAttribute("usuario") == null )
        {
            out.print("Conteudo de acesso restrito");
            out.print("<br><br>");
            out.print("<a href='login.html'>Fazer Login</a>");
        }
        else 
        {
            out.print("<div class='login-container'>");
            out.print("<a href='home_logado.jsp'>");
            out.print("<img src='GS IMPORTS.jpg' height='80' class='center-image' alt='Logo'>");
            out.print("</a>");
            out.print("<h2 style='margin-bottom: 20px;'>Bem vindo(a) " + session.getAttribute("usuario") + "</h2>");
            out.print("<a href='home_logado.jsp'>");
            out.print("<button type='button'>Voltar</button>");
            out.print("</a>");
            out.print("</div>");    

        // Variaveis para o banco de dados
        String banco    = "web" ;
        String endereco = "jdbc:mysql://localhost:3306/" + banco ;
        String usuario  = "root";
        String senha    = "" ;

        String driver   = "com.mysql.jdbc.Driver" ;

        //Carregar o driver na memória
        Class.forName( driver ) ;

        //Cria a variavel para conectar com banco
        Connection conexao ;

        // Abrir a conexao com o banco
        conexao = DriverManager.getConnection(endereco, usuario, senha) ;

        String sql = "SELECT * FROM usuarios";

        // Cria o statement para executar o camando no banco
        PreparedStatement stm = conexao.prepareStatement( sql );

        ResultSet dados =  stm.executeQuery() ;

        /*out.print( "<table border=1>" ) ;

        while( dados.next()  ) 
        {
            out.print( "<tr>" ) ;
                out.print( "<td>" ) ;
                out.print( dados.getString("codigo") ) ;
                out.print( "</td>" ) ;

                out.print( "<td>" ) ;
                out.print( dados.getString("nome") ) ;
                out.print( "</td>" ) ;

                out.print( "<td>" ) ;
                out.print( dados.getString("sobrenome") ) ;
                out.print( "</td>" ) ;

                out.print( "<td>" ) ;
                out.print( dados.getString("email") ) ;
                out.print( "</td>" ) ;            
            out.print( "</tr>" ) ;
        }

        out.print( "</table>" ) ;*/


        // out.print( "<select>" ) ;
        // while( dados.next()  ) 
        // {
        //     out.print( "<option>" ) ;
        //         out.print( dados.getString("nome") ) ;
        //     out.print( "</option>" ) ;
        // }
        // out.print( "</select>" ) ;

        }
    %>
</body>
</html>