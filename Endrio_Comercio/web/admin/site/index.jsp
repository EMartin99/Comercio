
<%@page import="modelo.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Marca"%>
<%@page import="DAO.MarcaDAO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.CategoriaDAO"%>
<%
         ProdutoDAO daop = new ProdutoDAO();
    List<Produto> listap = daop.listarAleatorio(4);
    List<Produto> listap2 = null;
    Produto objp= new Produto();
    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> lista = dao.listar();
       MarcaDAO daom = new MarcaDAO();
    List<Marca> listam = daom.listar();    
 
 
     
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
<head>
<title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body>

<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="social">
			
			</div>
			
			

					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->

				<div class="ca-r">
					<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> </div>
							<img src="images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

					</div>
				</div>
					<div class="clearfix"> </div>
			</div>
				
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<h1><a href="index.jsp">Comércio</a></h1>
				</div>
		  <div class=" h_menu4">
				<ul class="memenu skyblue">
				      <li><a class="color1" href="#">Categorias</a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
							                  <ul>
                                                 	    <%for(Categoria citem:lista)
                    {
                        
                    
                    %>
               
              <li> <a href="listaProdutos.jsp?categoria=<%=citem.getCodigo()%>"><%=citem.getNome()%></a></li>                 
                     <%
                        }
%>
                                                                    </ul>

									
								</div>							
							</div>
				
						  </div>
						</div>
					</li>
				    <li class="grid"><a class="color2" href="#">Marcas</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
		                         <ul>
		   <%for(Marca mitem:listam)
                    {
                        
                    
                    %>
                                         <li> <a href="listaProdutos.jsp?marca=<%=mitem.getCodigo()%>"><%=mitem.getNome()%></a></li>


                    
                     <%
                        }
%>
                                                                    </ul>
						  </div>
						</div>
			    </li>
				<li><a class="color4" href="login.html">Login</a></li>				
				<li><a class="color6" href="contact.html">Contact</a></li>
			  </ul> 
			</div>
				
				<div class="clearfix"> </div>
		</div>
		</div>
	</div>
	<div class="banner">
		<div class="container">
			  <script src="js/responsiveslides.min.js"></script>
  <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
			<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider">
			    <li>
					
						<div class="banner-text">
							<h3>Não me representa  </h3>
						<p>Do you know the difference between vegetables and fruits?</p>
						
						</div>
				
				</li>
				<li>
					
						<div class="banner-text">
							<h3>I am just a dolphin</h3>
						<p>Golfinhos não ofendem ninguem</p>
												

						</div>
					
				</li>
				<li>
						<div class="banner-text">
							<h3>Não nos processe</h3>
						<p> Feliz navidad , i wish a merry christmas S2</p>
								

						</div>
					
				</li>
			</ul>
		</div>

	</div>
	</div>

<!--content-->
<div class="container">
	<div class="cont">
		<div class="content">
			<div class="content-top-bottom">
                     
					<h1><a href="listaProdutos.jsp">Ver listagem de produtos</a></h1>
			
                          
            <div class="content-top">
				<h1>Produtos em Destaque</h1>
				<div class="grid-in">
                         
              <%
                            for (Produto pitem : listap) {
                        %>
					<div class="col-md-3 grid-top simpleCart_shelfItem">
						 <a href="single.jsp?codigo=<%=pitem.getCodigo()%>" class="b-link-stripe b-animate-go  thickbox"><img src="../../Fotos/<%=pitem.getImagem1()%>" width="65" height="200" />
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left    b-delay03 ">
									<span><%=pitem.getTitulo()%></span>
									
								</h3>
							</div>
						</a>
				

					<p><a href="single.jsp?codigo=<%=pitem.getCodigo()%>" class><%=pitem.getTitulo()%></a></p>
					<a href="#" class="item_add"><p class="number item_price"><i> </i><%=pitem.getPreco()%></p></a>
					</div>
                                        
                     
   <%
                            } 
                        %>
					
							<div class="clearfix"> </div>
				</div>
			</div>
		</div>
			
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
	<!----->

<div class="footer">
				<div class="container">
			
		</div>
		<div class="footer-class">
<p>© 2016 Endrio Martin . All Rights Reserved | Design by orions</p>		</div>
		</div>
</body>
</html>
			