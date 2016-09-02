<%@page import="modelo.Marca"%>
<%@page import="DAO.MarcaDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
String msg ="testando";
String classe = "alert-danger";
Marca obj;
//verifica se é post ou seja quero altera
if(request.getMethod().equals("POST")){
  MarcaDAO dao = new MarcaDAO();
obj = new Marca();
  obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
  obj.setNome(request.getParameter("txtNome"));
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
MarcaDAO dao = new MarcaDAO();
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
            Marca
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
                        <label>Nome</label>
                        <input class="form-control" type="text" name="txtNome" required value="<%=obj.getNome()%>"/>
                    </div>
                    


                    <button class="btn btn-primary btn-sm" type="submit" >Salvar</button>
                
            

        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>