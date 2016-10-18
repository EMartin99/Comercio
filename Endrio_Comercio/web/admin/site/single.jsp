<%-- 
    Document   : single
    Created on : 16/10/2016, 14:31:59
    Author     : Endrio Martin
--%>
<%@page import="DAO.ProdutoDAO"%>
<%@page import="modelo.Produto"%>

<%
    
       ProdutoDAO daop = new ProdutoDAO();
    Produto objp = daop.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    if (request.getParameter("codigo") == null || request.getParameter("codigo").isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }
    
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | single :: w3layouts</title>
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
<script src="js/imagezoom.js"></script>
</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="social">
			
			</div>
			<div class="header-left">
			
			
			
<!-- search-scripts -->
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
				
			</div>
				
				<div class="clearfix"> </div>
		</div>
		</div>
	</div>
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Detalhe</h2>
		</div>
	</div>
	<!-- grow -->
		<div class="product">
			<div class="container">
				
				<div class="product-price1">
				<div class="top-sing">
				<div class="col-md-7 single-top">	
						<div class="flexslider">
			  <ul class="slides">
			    <li data-thumb="../../Fotos/<%=objp.getImagem1()%>">
			        <div class="thumb-image"> <img src="../../Fotos/<%=objp.getImagem1()%>" width="40" height="150" /> </div>
			    </li>
			    <li data-thumb="../../Fotos/<%=objp.getImagem2()%>">
			         <div class="thumb-image"> <img src="../../Fotos/<%=objp.getImagem2()%>" width="65" height="200" /> </div>
			    </li>
			    <li data-thumb="../../Fotos/<%=objp.getImagem3()%>">
			       <div class="thumb-image"> <img src="../../Fotos/<%=objp.getImagem3()%>" width="65" height="200" /> </div>
			    </li> 
			
			  </ul>
		</div>

	<div class="clearfix"> </div>
<!-- slide -->


						<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

	
	
	
	
	
	
					</div>	
					<div class="col-md-5 single-top-in simpleCart_shelfItem">
						<div class="single-para ">
						<h4><%=objp.getTitulo()%></h4>
							<div class="star-on">
								
								
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">R$<%=objp.getPreco()%></h5>
							<p><%=objp.getDescricao()%></p>
                                                        
                                                    
							
								<a href="#" class="add-cart item_add">Adiconar ao carrinho</a>
							
						</div>
					</div>
				<div class="clearfix"> </div>
				</div>
			<!---->

		
</div>

		<div class="clearfix"> </div>
		</div>
		</div>
<!--//content-->
<div class="footer">
				<div class="container">
		
		</div>
		<div class="footer-class">
<p>© 2016 Endrio Martin . All Rights Reserved | Design by orions</p>		</div>
		</div>
</body>
</html>