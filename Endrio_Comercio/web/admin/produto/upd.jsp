<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Marca"%>
<%@page import="modelo.Categoria"%>
<%@page import="util.Upload"%>
<%@page import="java.util.List"%>
<%@page import="DAO.MarcaDAO"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page import="modelo.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
String msg = "";
    String classe = "";
    Integer errors = 0;
    CategoriaDAO Categoriadao = new CategoriaDAO();
    MarcaDAO Marcadao = new MarcaDAO();
    List<Categoria> clista = Categoriadao.listar();
    List<Marca> mlista = Marcadao.listar();
    Upload Upload = new Upload();
    Upload.setFolderUpload("imagens");
    ProdutoDAO dao = new ProdutoDAO();
    Produto obj = new Produto();
    if (request.getMethod().equals("GET")) {
        obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    }
    if (request.getMethod().equals("POST")) {
        if (Upload.formProcess(getServletContext(), request)) {
            obj = dao.buscarPorChavePrimaria(Integer.parseInt(Upload.getForm().get("codigo").toString()));
            if (Upload.getForm().get("titulo") != null && !Upload.getForm().get("titulo").toString().trim().isEmpty()) {
                obj.setTitulo((Upload.getForm().get("titulo").toString()));
            }
            if (Upload.getForm().get("descricao") != null && !Upload.getForm().get("descricao").toString().trim().isEmpty()) {
                obj.setDescricao((Upload.getForm().get("descricao").toString()));
            }
            if (Upload.getForm().get("quant") != null && !Upload.getForm().get("quant").toString().trim().isEmpty()) {
                obj.setQuant(Integer.parseInt(Upload.getForm().get("quant").toString()));
            }
            if (Upload.getForm().get("preco") != null && !Upload.getForm().get("preco").toString().trim().isEmpty()) {
                obj.setPreco(BigDecimal.valueOf(Double.parseDouble(Upload.getForm().get("preco").toString())));
            }
            if (Upload.getForm().get("codcategoria") != null && !Upload.getForm().get("codcategoria").toString().trim().isEmpty()) {

                Categoria citem = Categoriadao.buscarPorChavePrimaria(Integer.parseInt(Upload.getForm().get("codcategoria").toString()));
                if (clista.contains(citem)) {
                    obj.setCodcategoria(Categoriadao.buscarPorChavePrimaria(Integer.parseInt((Upload.getForm().get("codcategoria").toString()))));
                } else {
                    errors++;
                    msg += "Selecione uma Categoria";
                    classe = "alert-danger";
                }
            }
            if (Upload.getForm().get("codmarca") != null && !Upload.getForm().get("codmarca").toString().trim().isEmpty()) {

                Marca mitem = Marcadao.buscarPorChavePrimaria(Integer.parseInt(Upload.getForm().get("codmarca").toString()));
                if (mlista.contains(mitem)) {
                    obj.setCodmarca(Marcadao.buscarPorChavePrimaria(Integer.parseInt((Upload.getForm().get("codmarca").toString()))));
                } else {
                    errors++;
                    msg += "Selecione uma Marca";
                    classe = "alert-danger";
                }
            }
            if (Upload.getForm().get("destaque") != null) {
                obj.setDestaque(true);
            } else {
                obj.setDestaque(false);
            }
            if (Upload.getFiles().size() != 0 && Upload.getFiles().get(0) != null && !Upload.getFiles().get(0).toString().trim().isEmpty()) {
                obj.setImagem1((Upload.getFiles().get(0).toString()));
            }
            if (Upload.getFiles().size() >= 2 && Upload.getFiles().get(1) != null && !Upload.getFiles().get(1).toString().trim().isEmpty()) {
                obj.setImagem2((Upload.getFiles().get(1).toString()));
            }
            if (Upload.getFiles().size() >= 3 && Upload.getFiles().get(2) != null && !Upload.getFiles().get(2).toString().trim().isEmpty()) {
                obj.setImagem3((Upload.getFiles().get(2).toString()));
            }
            if (errors == 0 && dao.alterar(obj)) {
                    response.sendRedirect("upd-oka.jsp");

            } else {
                msg += "Tente Novamente!";
                classe = "alert-danger";
            }
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
            Produto
        </div>
        <div class="panel-body">

            <div class="alert <%=classe%>">
                <%=msg%>
            </div>
            <form action="#" method="post">
                
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Código</label>
                        <input class="form-control" type="text" name="codigo" readonly value="<%=obj.getCodigo()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Titulo</label>
                        <input class="form-control" type="text" name="titulo" required value="<%=obj.getTitulo()%>"/>
                    </div>
                    
                      <div class="form-group">
                        <label>Descricao</label>
                        <input class="form-control" type="text" name="descricao" required value="<%=obj.getDescricao()%>"/>
                    </div>

                                 <div class="form-group">
                        <label>Quantidade</label>
                        <input class="form-control" type="text" name="quantidade" required value="<%=obj.getQuant()%>"/>
                    </div>
                    
                                    <div class="form-group">
                        <label>Preco</label>
                        <input class="form-control" type="text" name="preco" required value="<%=obj.getPreco()%>"/>
                    </div>
                    <div class="row">
                            <label>Imagem(1)</label>
                            <input name="imagem1" class="form-control" type="file"/>
                            </br>
                            <img class="img-thumbnail center-block" <%if (obj.getImagem1() != null) {%>src="../../imagens/<%=obj.getImagem1()%><%}%>"/>
                        </div>
                        
                        
                        <div class="row">
                            <label>Imagem(2)</label>
                            <input name="imagem2" class="form-control" type="file"/>
                            </br>
                            <img class="img-thumbnail center-block" <%if (obj.getImagem2() != null) {%>src="../../imagens/<%=obj.getImagem2()%><%}%>"/>
                        </div>
                        
                        
                        <div class="row">
                            <label>Imagem(3)</label>
                            <input name="imagem3" class="form-control" type="file"/>
                            </br>
                            <img class="img-thumbnail center-block"  <%if (obj.getImagem2() != null) {%>src="../../imagens/<%=obj.getImagem3()%><%}%>"/>
                        </div>
                    <button class="btn btn-primary btn-sm" type="submit" >Salvar</button>
                
            

        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>