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
                <title>GS IMPORTS - Os melhores produtos você encontra aqui!</title>
                <link rel="stylesheet" href="home.css">
                <style>
                    .dropdown {
                        position: relative;
                        display: inline-block;
                    }

                    .dropdown-content {
                        display: none;
                        position: absolute;
                        background-color: #333;
                        align: left;
                        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                        z-index: 1;
                        padding-top: 20px;
                        
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

                    .submenu {
                        padding: 8px 0; 
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
                            <a href="javascript:void(0)" class="dropbtn">
                                <%= session.getAttribute("usuario") %>
                            </a>
                                <div class="dropdown-content">
                                    <a href="senhaAdm.jsp" class="submenu">Consulta</a>
                                    <a href="logout.jsp" class="submenu">Logout</a>
                                </div>
                        </li>
                    </ul>
                </nav>
                <header class="hero">
                    <div class="container">
                        <h1>Bem-vindo a GS IMPORTS <%= session.getAttribute("usuario") %></h1>
                        <p>Somos uma loja voltada ao publico masculino que gosta de se vestir bem e pagar barato.
                            Aqui voce encontra descontos de ate 20% OFF em todos os produtos do carrinho, confira nossa
                            tabela.
                        </p>
                        <h2>Tabela de Descontos por Quantidade de Pecas Doadas</h2>
                        <table>
                            <tr>
                                <th>Quantidade de Produtos Doados</th>
                                <th>Desconto</th>
                            </tr>
                            <tr>
                                <td>1 - 10</td>
                                <td>10%</td>
                            </tr>
                            <tr>
                                <td>11 - 20</td>
                                <td>15%</td>
                            </tr>
                            <tr>
                                <td>21 - 30</td>
                                <td>20%</td>
                            </tr>
                        </table>
                        <p>
                            Doando de 1 a 10 pecas garantimos 10% de desconto em sua compra, caso traga de 11
                            a 20 pecas 15% de desconto e de 21 a 30 pecas 20% de desconto.
                        </p>
                        <h1>PROJETO PARA FAMILIAS CARENTES</h1>
                        <button onclick="window.location.href='https:/ecotece.org.br/'">
                            <img src="logo_ecotece_menor.png" alt="Logo Ecotece">
                            Acessar Ecotece
                        </button>
                        <p>
                            O projeto GS IMPORTS e voltado para pratica sustentavel de
                            rodizio de vestuario, trazendo sua roupa, calcado ou bone em bom
                            estado.
                        </p>

                        <p>
                            Iremos utilizar as vestimentas para doacao, enviando para ONG
                            Ecotece sem o intuito de lucro, o qual tem por objetivo a ajuda de familias carentes.
                        </p>
                    </div>
                </header>
                <section class="featured-products">
                    <div class="container">
                        <h2>Produtos em Destaque</h2>
                        <div class="product-gallery">
                            <img src="TENIS BONITO.jpg" alt="TENIS BONITO" height="200">
                            <img src="Chinelo.jpg" alt="Chinelo" height="200">
                            <img src="Bone.jpg" alt="Bone" height="200">
                            <img src="KIT BOSSES.jpg" alt="KIT BOSSES" height="200">
                            <img src="KIT V.jpg" alt="KIT V" height="200">
                        </div>
                        <a href="produtos_logado.jsp" class="btn">Ver Produtos</a>
                    </div>
                </section>
                <footer>
                    <div class="container">
                        <p>&copy; 2024 GS IMPORTS. Todos os direitos reservados.</p>
                    </div>
                </footer>
            </body>

            </html>

            <% } %>