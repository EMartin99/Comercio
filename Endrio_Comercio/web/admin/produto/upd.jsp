
<%@page import="DAO.ProdutoDAO"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page import="DAO.MarcaDAO"%>
<%@page import="java.math.BigInteger"%>
<%@page import="util.Upload"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Marca"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Produto"%>
<%@include file="../cabecalho.jsp" %>
<%
String msg ="Modifique os dados abaixo";
String classe = "alert-danger";
Upload upload = new Upload();
    upload.setFolderUpload("Fotos");
Produto obj = null;

MarcaDAO mDAO = new MarcaDAO();
    List<Marca> mLista = mDAO.listar();
    CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
    
//Verifica se é POST, ou seja, quero alterar
if(request.getMethod().equals("POST")){
    if (upload.formProcess(getServletContext(), request)) {
    ProdutoDAO dao = new ProdutoDAO();
    obj = new Produto();
    obj.setCodigo(Integer.parseInt(upload.getForm().get("txtCodigo").toString()));
    obj.setTitulo(upload.getForm().get("txtTitulo").toString());
        obj.setDescricao(upload.getForm().get("txtDesc").toString());
        obj.setImagem1(upload.getFiles().get(0));
        obj.setQuant(Integer.parseInt(upload.getForm().get("txtQuant").toString()));                
        BigInteger X = BigInteger.valueOf(Long.valueOf(upload.getForm().get("txtPreco").toString()).longValue());
        obj.setPreco(X);
        Categoria categoria = new Categoria();
        categoria.setCodigo(Integer.parseInt(upload.getForm().get("txtCat").toString()));
        obj.setCodcategoria(categoria);
        Marca marca = new Marca();
        marca.setCodigo(Integer.parseInt(upload.getForm().get("txtMarca").toString()));
        obj.setCodmarca(marca);              
      if (upload.getForm().get("txtDest") != null) {
            obj.setDestaque(true);
        } else {
            obj.setDestaque(false);
        }
 
    Boolean resultado = dao.alterar(obj);
    if(resultado){
        msg="Registro Alterado com Sucesso";
        classe = "alert-success";
    }else{
        msg="Não foi Possivel Alterar";
        classe = "alert-danger";
    }
//Popular com o que ele digitou no form
    }  
}else{
    //É GET -------
if(request.getParameter("codigo") == null)
{
    
    response.sendRedirect("index.jsp");
    return;
}

ProdutoDAO dao = new ProdutoDAO();
obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
//Se for um resgistro inválido, sai da tela
if(obj == null)
{
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
            Produto
        </div>
        <div class="panel-body">

            <div class="alert <%=classe%>">
                <%=msg%>
            </div>
                    <form action="#" method="post" enctype="multipart/form-data">

                <div class="col-lg-6">
                    
                    <div class="form-group">
                        <label>Código</label>
                        <input class="form-control" type="text" name="txtCodigo" readonly value="<%=obj.getCodigo()%>" />
                    </div>

                    <div class="form-group">
                        <label>Titulo</label>
                        <input class="form-control" type="text" name="txtTitulo" required value="<%=obj.getTitulo()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Descrição</label>
                        <input class="form-control" type="text" name="txtDesc" required value="<%=obj.getDescricao()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Quantidade</label>
                        <input class="form-control" type="number" name="txtQuant" required value="<%=obj.getQuant()%>"/>
                    </div>
                    <div class="form-group">
                        <label>Preço</label>
                        <input class="form-control" type="number" name="txtPreco" required value="<%=obj.getPreco()%>"/>
                    </div>

                    <div class="form-group">
                        <label>Categoria</label>
                        <select name="txtCat" class="form-control" required value="<%=obj.getCodcategoria()%>">
                            <option value="">Selecione</option>
                            <%
                                for (Categoria cat : cLista) {
                            %>
                            <option value="<%=cat.getCodigo()%>" ><%=cat.getNome()%></option>
                            <%
                                }
                            %>

                        </select>
                    </div>

                    <div class="form-group">
                        <label>Marca</label>
                        <select name="txtMarca" class="form-control" required value="<%=obj.getCodmarca()%>">
                            <option value="">Selecione</option>
                            <%
                                for (Marca mar : mLista) {
                            %>
                            <option value="<%=mar.getCodigo()%>" ><%=mar.getNome()%></option>
                            <%
                                }
                            %>

                        </select>
                    </div>

                    <div class="form-group">
                        <label>Imagem1</label>
                        <input class= "form-control" type="file" name="txtImg1" required value= "<%=obj.getImagem1()%>"/>
                    <!--</div>
                    <div class="form-group">
                        <label>Imagem2</label>
                        <input class="form-control" type="file" name="txtImg2" required value= "<%=obj.getImagem2()%>" />
                    </div>
                    <div class="form-group">
                        <label>Imagem3</label>
                        <input class="form-control" type="file" name="txtImg3" required value= "<%=obj.getImagem3()%>"/>
                    </div>-->
                    <div class="form-group">
                        <label>Destaque</label>
                        <input class="form-control" type="checkbox" name="txtDest" value="<%=obj.getDestaque()%>"/>
                    </div>
                    
                <button class="btn btn-primary btn-sm" type="submit">Salvar</button>
                
            </form>

        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>