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
    <link rel="stylesheet" href="produtos.css">
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
    <header class="hero">
        <div class="container">
            <h1>Nossos Produtos</h1>
            <div class="product">
                <img src="Bone.jpg" alt="Produto 1">
                <h2>Bone Tincan Oakley</h2>
                <p>Um bone perfeito para o seu kit.</p>
                <p>Preco: R$ 249,99</p>
                <button>Adicionar ao Carrinho</button>
            </div>
        
            <div class="product">
                <img src="KIT BOSSES.jpg" alt="Produto 2">
                <h2>Kit HUGO BOSS</h2>
                <p>Um kit perfeito para sua revoada!</p>
                <p>Preco: R$ 299,99</p>
                <button>Adicionar ao Carrinho</button>
            </div>

            <div class="product">
                <img src="TENIS BONITO.jpg" alt="Produto 2">
                <h2>Tenis Louis Vuitton</h2>
                <p>Um tenis que nao pode faltar no seu dia a dia.</p>
                <p>Disponivel do 38 ao 43</p>
                <p>Preco: R$ 599,99</p>
                <button>Adicionar ao Carrinho</button>
            </div>

            <div class="product">
                <img src="KIT V.jpg" alt="Produto 2">
                <h2>Kit Armani</h2>
                <p>Um kit perfeito para o seu date com a gata!</p>
                <p>Preco: R$ 199,99</p>
                <button>Adicionar ao Carrinho</button>
            </div>

            <div class="product">
                <img src="NIK CHINELO.jpg" alt="Produto 2">
                <h2>Chinelo Nike Vermelho</h2>
                <p>Confortavel e ideal para o seu passeio.</p>
                <p>Disponivel do 37 ao 43</p>
                <p>Preco: R$ 99,99</p>
                <button>Adicionar ao Carrinho</button>
            </div>

            <div class="product">
                <img src="Chinelo.jpg" alt="Produto 2">
                <h2>Chinelo da Nike Asuna 2.0</h2>
                <p>Disponivel do 37 ao 43</p>
                <p>Perfeito para usar com  o seu kit (recomendamos o Kit Armani com ele).</p>
                <p>Preco: R$ 99,99</p>
                <button>Adicionar ao Carrinho</button>
            </div>  
        </div>
    </header>
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