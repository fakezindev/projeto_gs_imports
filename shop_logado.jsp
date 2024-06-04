<%@page language="java" import="java.sql.*" %>

<%  
    if(session.getAttribute("usuario") == null ) {
%>
        
    <head><link rel="stylesheet" href="login.css"></head>
        <div class="login-container">
            <a href="home.html">
                <img src="GS IMPORTS.jpg" height="80" class="center-image" alt="Logo">
            </a>
            <h2>Conteudo de acesso restrito</h2>
            <a href="login.html">
                <button type="button">Fazer Login</button>
            </a>
        </div>
<%
    }
    else {
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Produtos - GS IMPORTS</title>
    <link rel="stylesheet" href="carrinho.css">
    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown:hover .dropbtn {
            background-color: transparent;
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
        <ul>
            <li><a href="home_logado.jsp">Home</a></li>
            <li><a href="produtos_logado.jsp">Produtos</a></li>
            <li><a href="shop_logado.jsp">Carrinho de Compras</a></li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn"><%= session.getAttribute("usuario") %></a>
                <div class="dropdown-content">
                    <a href="senhaAdm.jsp" class="submenu">Consulta</a>
                    <a href="logout.jsp">Logout</a>
                </div>
            </li>
        </ul>
    </nav>
    <h1>Carrinho de Compras</h1>
    
    <div class="carrinho">
        <div class="produto">
            <img src="KIT BOSSES.jpg" alt="Produto 1">
            <div class="info-produto">
                <h2>Kit HUGO BOSS</h2>
                <p>Um kit perfeito para sua revoada!</p>
                <p>Preco: R$ 299,99</p>
            </div>
            <button>Remover</button>
        </div>
        
        <div class="produto">
            <img src="NIK CHINELO.jpg" alt="Produto 2">
            <div class="info-produto">
                <h2>Chinelo Nike Vermelho</h2>
                <p>Confortavel e ideal para o seu passeio.</p>
                <p>Tamanho 40</p>
                <p>Preco: R$ 99,99</p>
            </div>
            <button>Remover</button>
        </div>
        
        <div class="produto">
            <img src="KIT V.jpg" alt="Produto 2">
            <div class="info-produto">
                <h2>Kit Armani</h2>
                <p>Um kit perfeito para o seu date com a gata!</p>
                <p>Preco: R$ 199,99</p>
            </div>
            <button>Remover</button>
        </div>

    </div>
    
    <div class="total">
        <div class="total-info">
            <h3>Subtotal: R$ 599,97</h3>
            <h3>Desconto: 10% OFF (5 produtos doados)</h3>
            <h3>Total: R$ 539,97</h3>
        </div>
        <button>Finalizar Compra</button>
    </div>
    
    <footer>
        <div class="container">
            <p>&copy; 2024 GS IMPORTS. Todos os direitos reservados.</p>
        </div>
    </footer>
</body>
</html>


<%
    }
%>