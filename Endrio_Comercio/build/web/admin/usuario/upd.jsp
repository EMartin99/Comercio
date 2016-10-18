<%@page import="modelo.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
String msg ="testando";
String classe = "alert-danger";
Usuario obj;
//verifica se é post ou seja quero altera
if(request.getMethod().equals("POST")){
  UsuarioDAO dao = new UsuarioDAO();
obj = new Usuario();
 obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
  obj.setLogin(request.getParameter("txtLogin"));
      obj.setSenha(request.getParameter("txtSenha"));
   if (request.getParameter("admin") != null) {
            obj.setAdmin(true);
        } else {
            obj.setAdmin(false);
        }
  Boolean resultado = dao.alterar(obj);
  if(resultado)
  {
      msg="Registro alterado com sucesso";
              classe = "alert-sucess";
  }else{
        msg="Não foi possivel alterar";
              classe = "alert-danger";
  }
  
}else{
if(request.getParameter("codigo")==null)
{
    response.sendRedirect("index.jsp");
     return;
}
UsuarioDAO dao = new UsuarioDAO();
 obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
if (obj ==null){
     response.sendRedirect("index.jsp");
        return;
}
}
%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Sistema de Comércio Eletrônico
            <small>Admin</small>
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Área Administrativa</a>
            </li>
            <li class="active">
                <i class="fa fa-file"></i> Aqui vai o conteúdo de apresentação
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            Usuario
        </div>
        <div class="panel-body">

            <div class="alert <%=classe%>">
                <%=msg%>
            </div>
            <form action="#" method="post">
                
                <div class="col-lg-6">
                      <div class="form-group">
                   <label>Código</label>
                        <input class="form-control" type="text" name="txtCodigo" readonly value="<%=obj.getCodigo()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Login</label>
                        <input class="form-control" type="text" name="txtLogin"  value="<%=obj.getLogin()%>"/>
                    </div>
                          <div class="form-group">
                        <label>Senha</label>
                        <input class="form-control" type="password" name="txtSenha" readonly required value="<%=obj.getSenha()%>"/>
                    </div>
           <div class="form-group">
                        <label>Admin</label>
                        <input class="form-control" type="checkbox" name="admin" value="<%=obj.getAdmin()%>"/>
                    </div>
  
                    <button class="btn btn-primary btn-sm" type="submit" >Salvar</button>
                
            

        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>