<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
    ProdutoDAO dao = new ProdutoDAO();
    List<Produto> lista;
     if(request.getParameter("codigo")!=null){
        Produto obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        if(obj!=null){
            
            Boolean funcionou =dao.excluir(obj);
            if(funcionou){
                
            }
        }
    }
  if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();

    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }
    %>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Gerenciamento de Produtos

        </h1>
                  <div>    
    <form method="post">
        <input type="text" name="txtfindFilter" placeholder="Pesquise Aqui"> </br>
        <input type="submit" value="Pesquisar">
    </form>
</div>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="index.jsp">listagem</a>
            </li>
            <li class="active">
                <i class="fa fa-file"></i> listagem de registros
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">

        <div class="panel-body">

            <a  href="add.jsp" class="btn  btn-primary btn-sm fa fa-plus-square-o" >Novo</a>
            
        </div>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <form action="#" method="post">
            <div class="form-group input-group">
                <input type="text" class="form-control" placeholder="digite...">
                                <span class="input-group-btn"><button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button></span>
                            </div>
        </form>
        <div class="panel-body">
           
        
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>C�digo</th>
                        <th>Titulo</th>
                        <th>Descricao</th>
                        <th>Quantidade</th>
                        <th>Preco</th>
                            <th>Imagem(1)</th>
                            <th>Imagem(2)</th>
                            <th>Imagem(3)</th>
                         <th>Destaque</th>
                        <th >A��es</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Produto item:lista)
                    {
                        
                    
                    %>
                    <tr>
                 
                        <td><%=item.getCodigo()%></td>
                        <td><%=item.getTitulo()%></td>
                          <td><%=item.getDescricao()%></td>
                            <td><%=item.getQuant()%></td>
                               <td><%=item.getPreco()%></td>
                            <%
                                if (item.getCodcategoria() != null) {
                            %>
                            <td><%=item.getCodcategoria().getNome()%></td>
                            <%
                                }
                                if (item.getCodmarca() != null) {
                            %>
                            <td><%=item.getCodmarca().getNome()%></td>
                            <%
                                }
                            %>
                            <td><%=item.getDestaque()%></td>

                            <td><img src="../../imagens/<%=item.getImagem1()%>" width="65" height="65" /></td>
                            <td><img src="../../imagens/<%=item.getImagem2()%>" width="65" height="65" /></td>
                            <td><img src="../../imagens/<%=item.getImagem3()%>" width="65" height="65" /></td>
                            
                        <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>" class="btn  btn-primary btn-sm">Alterar</a>
                            <a href="index.jsp?codigo=<%=item.getCodigo()%>" class="btn  btn-primary btn-sm">Excluir</a>  
                         </td>
                    </tr>
                    <%
                        }
%>
                </tbody>
            </table>
           
                <!-- /.table-responsive -->
            </div>

        </div>
        <!-- /.panel-body -->
    </div>
    <!-- /.panel -->
        </div>
    <%@include file="../rodape.jsp" %>
