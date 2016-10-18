package org.apache.jsp.admin.site;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Produto;
import DAO.ProdutoDAO;
import modelo.Categoria;
import modelo.Marca;
import DAO.MarcaDAO;
import java.util.List;
import DAO.CategoriaDAO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

         ProdutoDAO daop = new ProdutoDAO();
    List<Produto> listap = daop.listarAleatorio(4);
    List<Produto> listap2 = null;
    Produto objp= new Produto();
    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> lista = dao.listar();
       MarcaDAO daom = new MarcaDAO();
    List<Marca> listam = daom.listar();    
 
 
     

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("<script src=\"js/jquery.min.js\"></script>\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<!--theme-style-->\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\t\n");
      out.write("<!--//theme-style-->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!--fonts-->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->\n");
      out.write("<!-- start menu -->\n");
      out.write("<link href=\"css/memenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<script type=\"text/javascript\" src=\"js/memenu.js\"></script>\n");
      out.write("<script>$(document).ready(function(){$(\".memenu\").memenu();});</script>\n");
      out.write("<script src=\"js/simpleCart.min.js\"> </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"header\">\n");
      out.write("\t<div class=\"header-top\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"social\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t<script src=\"js/classie.js\"></script>\n");
      out.write("\t\t\t\t\t<script src=\"js/uisearch.js\"></script>\n");
      out.write("\t\t\t\t\t\t<script>\n");
      out.write("\t\t\t\t\t\t\tnew UISearch( document.getElementById( 'sb-search' ) );\n");
      out.write("\t\t\t\t\t\t</script>\n");
      out.write("\t\t\t\t\t<!-- //search-scripts -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"ca-r\">\n");
      out.write("\t\t\t\t\t<div class=\"cart box_1\">\n");
      out.write("\t\t\t\t\t\t<a href=\"checkout.html\">\n");
      out.write("\t\t\t\t\t\t<h3> <div class=\"total\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"simpleCart_total\"></span> </div>\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/cart.png\" alt=\"\"/></h3>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t<p><a href=\"javascript:;\" class=\"simpleCart_empty\">Empty Cart</a></p>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"head-top\">\n");
      out.write("\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\">Comércio</a></h1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t  <div class=\" h_menu4\">\n");
      out.write("\t\t\t\t<ul class=\"memenu skyblue\">\n");
      out.write("\t\t\t\t      <li><a class=\"color1\" href=\"#\">Categorias</a>\n");
      out.write("\t\t\t\t      \t<div class=\"mepanel\">\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col1\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"h_nav\">\n");
      out.write("\t\t\t\t\t\t\t                  <ul>\n");
      out.write("                                                 \t    ");
for(Categoria citem:lista)
                    {
                        
                    
                    
      out.write("\n");
      out.write("               \n");
      out.write("              <li> <a href=\"listaProdutos.jsp?categoria=");
      out.print(citem.getCodigo());
      out.write('"');
      out.write('>');
      out.print(citem.getNome());
      out.write("</a></li>                 \n");
      out.write("                     ");

                        }

      out.write("\n");
      out.write("                                                                    </ul>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t    <li class=\"grid\"><a class=\"color2\" href=\"#\">Marcas</a>\n");
      out.write("\t\t\t\t\t  \t<div class=\"mepanel\">\n");
      out.write("\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col1\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"h_nav\">\n");
      out.write("\t\t                         <ul>\n");
      out.write("\t\t   ");
for(Marca mitem:listam)
                    {
                        
                    
                    
      out.write("\n");
      out.write("                                         <li> <a href=\"listaProdutos.jsp?marca=");
      out.print(mitem.getCodigo());
      out.write('"');
      out.write('>');
      out.print(mitem.getNome());
      out.write("</a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                     ");

                        }

      out.write("\n");
      out.write("                                                                    </ul>\n");
      out.write("\t\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t    </li>\n");
      out.write("\t\t\t\t<li><a class=\"color4\" href=\"login.html\">Login</a></li>\t\t\t\t\n");
      out.write("\t\t\t\t<li><a class=\"color6\" href=\"contact.html\">Contact</a></li>\n");
      out.write("\t\t\t  </ul> \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"banner\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t  <script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("  <script>\n");
      out.write("    $(function () {\n");
      out.write("      $(\"#slider\").responsiveSlides({\n");
      out.write("      \tauto: true,\n");
      out.write("      \tnav: true,\n");
      out.write("      \tspeed: 500,\n");
      out.write("        namespace: \"callbacks\",\n");
      out.write("        pager: true,\n");
      out.write("      });\n");
      out.write("    });\n");
      out.write("  </script>\n");
      out.write("\t\t\t<div  id=\"top\" class=\"callbacks_container\">\n");
      out.write("\t\t\t<ul class=\"rslides\" id=\"slider\">\n");
      out.write("\t\t\t    <li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"banner-text\">\n");
      out.write("\t\t\t\t\t\t\t<h3>Não me representa  </h3>\n");
      out.write("\t\t\t\t\t\t<p>Do you know the difference between vegetables and fruits?</p>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"banner-text\">\n");
      out.write("\t\t\t\t\t\t\t<h3>I am just a dolphin</h3>\n");
      out.write("\t\t\t\t\t\t<p>Golfinhos não ofendem ninguem</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<div class=\"banner-text\">\n");
      out.write("\t\t\t\t\t\t\t<h3>Não nos processe</h3>\n");
      out.write("\t\t\t\t\t\t<p> Feliz navidad , i wish a merry christmas S2</p>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("<!--content-->\n");
      out.write("<div class=\"container\">\n");
      out.write("\t<div class=\"cont\">\n");
      out.write("\t\t<div class=\"content\">\n");
      out.write("\t\t\t<div class=\"content-top-bottom\">\n");
      out.write("                     \n");
      out.write("\t\t\t\t\t<h1><a href=\"listaProdutos.jsp\">Ver listagem de produtos</a></h1>\n");
      out.write("\t\t\t\n");
      out.write("                          \n");
      out.write("            <div class=\"content-top\">\n");
      out.write("\t\t\t\t<h1>Produtos em Destaque</h1>\n");
      out.write("\t\t\t\t<div class=\"grid-in\">\n");
      out.write("                         \n");
      out.write("              ");

                            for (Produto pitem : listap) {
                        
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 grid-top simpleCart_shelfItem\">\n");
      out.write("\t\t\t\t\t\t <a href=\"single.jsp?codigo=");
      out.print(pitem.getCodigo());
      out.write("\" class=\"b-link-stripe b-animate-go  thickbox\"><img src=\"../../Fotos/");
      out.print(pitem.getImagem1());
      out.write("\" width=\"65\" height=\"200\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"b-wrapper\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3 class=\"b-animate b-from-left    b-delay03 \">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span>");
      out.print(pitem.getTitulo());
      out.write("</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t</h3>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t<p><a href=\"single.jsp?codigo=");
      out.print(pitem.getCodigo());
      out.write("\" class>");
      out.print(pitem.getTitulo());
      out.write("</a></p>\n");
      out.write("\t\t\t\t\t<a href=\"#\" class=\"item_add\"><p class=\"number item_price\"><i> </i>");
      out.print(pitem.getPreco());
      out.write("</p></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                        \n");
      out.write("                     \n");
      out.write("   ");

                            } 
                        
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t<!----->\n");
      out.write("\n");
      out.write("<div class=\"footer\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"footer-class\">\n");
      out.write("<p>© 2016 Endrio Martin . All Rights Reserved | Design by orions</p>\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\t\t\t");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
