<%@page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Cadastro feito com Sucesso!</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="login-container">
        <a href="home.html">
            <img src="GS IMPORTS.jpg" height="80" class="center-image" alt="Logo">
        </a>
        <h2>Cadastro efetuado com Sucesso!</h2>
         <a href="login.html">
            <button type="button">Voltar</button>
        </a>   
            
    <% 

        String vName = request.getParameter("name");
        String vLastName = request.getParameter("last-name");
        String vEmail = request.getParameter("email");
        String vSenha = request.getParameter("senha");

        String database = "web";
        String endereco = "jdbc:mysql://localhost:3306/" + database;
        String usuario = "root";
        String senha = "";

        String driver = "com.mysql.jdbc.Driver";

        Class.forName(driver);

        Connection conexao;

        conexao = DriverManager.getConnection(endereco, usuario, senha);

        String sql = "insert into usuarios (nome, sobrenome, email, senha) values (?, ?, ?, ?)";

        PreparedStatement stm = conexao.prepareStatement(sql);
        stm.setString(1, vName);
        stm.setString(2, vLastName);
        stm.setString(3, vEmail);
        stm.setString(4, vSenha);

        stm.execute();
        stm.close();
        
    %>

</body>
</html>