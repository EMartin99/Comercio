package org.apache.jsp.admin.produto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import util.Upload;
import DAO.ProdutoDAO;
import modelo.Produto;
import java.util.List;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/produto/../cabecalho.jsp");
    _jspx_dependants.add("/admin/produto/../rodape.jsp");
  }

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Sistema de Comércio Eletrônico</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"../css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom Fonts -->\n");
      out.write("    <link href=\"../font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("\n");
      out.write("        <!-- Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand\" href=\"../home\">\n");
      out.write("                   Área Administrativa\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <!-- Top Menu Items -->\n");
      out.write("            <ul class=\"nav navbar-right top-nav\">\n");
      out.write("                \n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-user\"></i> John Smith <b class=\"caret\"></b></a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-fw fa-user\"></i> Profile</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-fw fa-envelope\"></i> Inbox</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-fw fa-gear\"></i> Settings</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-fw fa-power-off\"></i> Log Out</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->\n");
      out.write("            <div class=\"collapse navbar-collapse navbar-ex1-collapse\">\n");
      out.write("                <ul class=\"nav navbar-nav side-nav\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"../categoria/\"><i class=\"fa fa-fw fa-edit\"></i> Categoria</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"../produto/\"><i class=\"fa fa-fw fa-bar-chart-o\"></i> Produto</a>\n");
      out.write("                    </li>\n");
      out.write("                       <li>\n");
      out.write("                        <a href=\"../marca/\"><i class=\"fa fa-fw fa-bar-chart-o\"></i> Marca</a>\n");
      out.write("                    </li>\n");
      out.write("                            <li>\n");
      out.write("                        <a href=\"../cliente/\"><i class=\"fa fa-fw fa-bar-chart-o\"></i> Cliente</a>\n");
      out.write("                    </li>\n");
      out.write("                            <li>\n");
      out.write("                        <a href=\"../usuario/\"><i class=\"fa fa-fw fa-bar-chart-o\"></i> Usuario</a>\n");
      out.write("                    </li>\n");
      out.write("                          <li>\n");
      out.write("                        <a href=\"../status/\"><i class=\"fa fa-fw fa-bar-chart-o\"></i> Status</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div id=\"page-wrapper\">\n");
      out.write("\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("                <!-- Page Heading -->\n");
      out.write('\n');

    Upload upload = new Upload();
    ProdutoDAO dao = new ProdutoDAO();
    List<Produto> lista;

    //verifico se é escluir
    if (request.getParameter("codigo") != null) {
        Produto obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        if (obj != null) {
            Boolean funcionou = dao.excluir(obj);
            if (funcionou) {
                //aqui depois vai ter uma janela
            }
        }
    }
    //fim da exclusão
  if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();

    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }

      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-lg-12\">\n");
      out.write("        <h1 class=\"page-header\">\n");
      out.write("            Gerenciamento de Produtos\n");
      out.write("\n");
      out.write("        </h1>\n");
      out.write("        <ol class=\"breadcrumb\">\n");
      out.write("            <li>\n");
      out.write("                <i class=\"fa fa-dashboard\"></i>  <a href=\"index.jsp\">listagem</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"active\">\n");
      out.write("                <i class=\"fa fa-file\"></i> listagem de registros\n");
      out.write("            </li>\n");
      out.write("        </ol>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- /.row -->\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"panel panel-default\">\n");
      out.write("\n");
      out.write("        <div class=\"panel-body\">\n");
      out.write("\n");
      out.write("            <a  href=\"add.jsp\" class=\"btn  btn-primary btn-sm fa fa-plus-square-o\" >Novo</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- /.row -->\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"panel panel-default\">\n");
      out.write("        <form action=\"#\" method=\"post\" >\n");
      out.write("               <div class=\"form-group input-group\">\n");
      out.write("                <input type=\"text\"  name=\"filtro\" class=\"form-control\" placeholder=\"digite...\">\n");
      out.write("                                <span class=\"input-group-btn\"><button class=\"btn btn-default\" type=\"submit\"><i class=\"fa fa-search\"></i></button></span>\n");
      out.write("                            </div>\n");
      out.write("        </form>\n");
      out.write("        <div class=\"panel-body\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"table-responsive\">\n");
      out.write("                <table class=\"table table-bordered table-hover\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Código</th>\n");
      out.write("                            <th>Titulo</th>\n");
      out.write("                            <th>Descrição</th>\n");
      out.write("                            <th>Quantidade</th>\n");
      out.write("                            <th>Preço</th>\n");
      out.write("                            <th>Categoria</th>\n");
      out.write("                            <th>Marca</th>\n");
      out.write("                            <th>Destaque</th>\n");
      out.write("                            <th>Imagem(1)</th>\n");
      out.write("                            <th>Imagem(2)</th>\n");
      out.write("                            <th>Imagem(3)</th>\n");
      out.write("                            <th >Ações</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        ");

                            for (Produto item : lista) {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(item.getCodigo());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getTitulo());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getDescricao());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getQuant());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getPreco());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getCodcategoria().getNome());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getCodmarca().getNome());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(item.getDestaque());
      out.write("</td>\n");
      out.write("                             <td><img src=\"../../Fotos/");
      out.print(item.getImagem1());
      out.write("\" width=\"65\" height=\"65\" /></td>\n");
      out.write("                            <td><img src=\"../../Fotos/");
      out.print(item.getImagem2());
      out.write("\" width=\"65\" height=\"65\" /></td>\n");
      out.write("                            <td><img src=\"../../Fotos/");
      out.print(item.getImagem3());
      out.write("\" width=\"65\" height=\"65\" /></td>\n");
      out.write("\n");
      out.write("                            <td><a href=\"upd.jsp?codigo=");
      out.print(item.getCodigo());
      out.write("\" class=\"btn  btn-primary btn-sm\">Alterar</a>\n");
      out.write("                            <buttom class=\"btn btn-danger btn-sm\" data-toggle=\"modal\" data-target=\"#myModal\" onclick=\"codigo=");
      out.print(item.getCodigo());
      out.write("\">Excluir</buttom>  \n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("                <!-- /.table-responsive -->\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- /.panel-body -->\n");
      out.write("    </div>\n");
      out.write("    <!-- /.panel -->\n");
      out.write("</div>\n");
      out.write("                        <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <div class=\"modal-header\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n");
      out.write("                <h4 class=\"modal-title\" id=\"myModalLabel\">Exclusao</h4>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("               Voce tem certeza que deseja excluir?\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-footer\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Fechar</button>\n");
      out.write("                <button type=\"button\" class=\"btn btn-primary\" onclick=\"excluir()\">Confirmar exclusao</button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.modal-content -->\n");
      out.write("    </div>\n");
      out.write("    <!-- /.modal-dialog -->\n");
      out.write("</div>\n");
      out.write("<script>\n");
      out.write("    var codigo;\n");
      out.write("    function excluir()\n");
      out.write("    {\n");
      out.write("        document.location.href = \"index.jsp?codigo=\"+codigo;\n");
      out.write("    }\n");
      out.write("<!-- /.modal -->\n");
      out.write("</script>\n");
      out.write("</div>\n");
      out.write("<!-- /.container-fluid -->\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<!-- /#page-wrapper -->\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<!-- /#wrapper -->\n");
      out.write("\n");
      out.write("<!-- jQuery -->\n");
      out.write("<script src=\"../js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Bootstrap Core JavaScript -->\n");
      out.write("<script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write('\n');
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
