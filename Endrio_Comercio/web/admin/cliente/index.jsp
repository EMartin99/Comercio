<%@page import="java.util.List"%>
<%@page import="modelo.Cliente"%>
<%@page import="DAO.ClienteDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
    ClienteDAO dao = new ClienteDAO();
    List<Cliente> lista;
     if(request.getParameter("codigo")!=null){
        Cliente obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
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
            Gerenciamento de Clientes

        </h1>
                  <div>    
    <form method="post">
        <input type="text" name="filtro" placeholder="Pesquise Aqui"> </br>
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
                        <th>Código</th>
                        <th>Nome</th>
                         <th>Email</th>
                         <th>Senha</th>
                          <th>Endereco</th>
                           <th>Bairro</th>
                            <th>Cidade</th>
                            <th>Estado</th>
                            <th>Cep<th>
                        <th >Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Cliente item:lista)
                    {
                        
                    
                    %>
                    <tr>
                    
                        <td><%=item.getCodigo()%></td>
                        <td><%=item.getNome()%></td>
                        <td><%=item.getEmail()%></td>
                                    <td><b>*****</b></td>
                           <td><%=item.getEndereco()%></td>
                        <td><%=item.getBairro()%></td>
                           <td><%=item.getCidade()%></td>
                        <td><%=item.getEstado()%></td>
                           <td><%=item.getCep()%></td>
              
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
