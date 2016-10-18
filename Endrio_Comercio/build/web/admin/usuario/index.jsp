<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
    UsuarioDAO dao = new UsuarioDAO();
    List<Usuario> lista;
     if(request.getParameter("codigo")!=null){
        Usuario obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
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
            Gerenciamento de Usuarios

        </h1>
              
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
                <input type="text"  name="filtro" class="form-control" placeholder="digite...">
                                <span class="input-group-btn"><button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button></span>
                            </div>
        </form>
        <div class="panel-body">
           
        
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Login</th>
                        <th>Senha</th>
                        <th>Admim</th>
                        <th >Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Usuario item:lista)
                    {
                        
                    
                    %>
                    <tr>
                        <td><%=item.getCodigo()%></td>
                        <td><%=item.getLogin()%></td>
                        <td>***************</td>
                        <td><%=item.getAdmin()%></td>
                  <td><a href="upd.jsp?codigo=<%=item.getCodigo()%>" class="btn  btn-primary btn-sm">Alterar</a> 
                <buttom class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal" onclick="codigo=<%=item.getCodigo()%>">Excluir</buttom>
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
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Exclusao</h4>
            </div>
            <div class="modal-body">
               Voce tem certeza que deseja excluir?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                <button type="button" class="btn btn-primary" onclick="excluir()">Confirmar exclusao</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    var codigo;
    function excluir()
    {
        document.location.href = "index.jsp?codigo="+codigo;
    }
<!-- /.modal -->
</script>
    <%@include file="../rodape.jsp" %>

    <%@include file="../rodape.jsp" %>
