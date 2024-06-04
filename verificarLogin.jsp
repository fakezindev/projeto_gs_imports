<%@page language="java" import="java.sql.*" %>

<%

    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");

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

    String sql = "SELECT * FROM usuarios WHERE email=? AND senha=?";

    // Cria o statement para executar o comando no banco
    PreparedStatement stm = conexao.prepareStatement( sql );

    stm.setString(1, vEmail) ;
    stm.setString(2, vSenha) ;

    ResultSet dados =  stm.executeQuery();

    if(dados.next())
    {
       session.setAttribute( "usuario"  ,  dados.getString("nome")  ) ;
       response.sendRedirect("consulta2.jsp");
    }
    else
    {
        out.print("Login incorreto");
    }

%>

