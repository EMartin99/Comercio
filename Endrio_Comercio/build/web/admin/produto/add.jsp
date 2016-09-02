<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Marca"%>
<%@page import="java.util.List"%>
<%@page import="DAO.MarcaDAO"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page import="util.Upload"%>
<%@page import="modelo.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
  String msg = "";
    String classe = "";
    Integer count = 0;
    CategoriaDAO Categoriadao = new CategoriaDAO();
    MarcaDAO Marcadao = new MarcaDAO();
    List<Categoria> clista = Categoriadao.listar();
    List<Marca> mlista = Marcadao.listar();
    Upload update = new Upload();
    update.setFolderUpload("imagens");
    if (request.getMethod().equals("POST")) {
        if (update.formProcess(getServletContext(), request)) {
            Produto obj = new Produto();
            ProdutoDAO dao = new ProdutoDAO();
            if (update.getForm().get("titulo") != null && !update.getForm().get("titulo").toString().trim().isEmpty()) {
                obj.setTitulo((update.getForm().get("titulo").toString()));
            }
            if (update.getForm().get("descricao") != null && !update.getForm().get("descricao").toString().trim().isEmpty()) {
                obj.setDescricao((update.getForm().get("descricao").toString()));
            }
            if (update.getForm().get("quant") != null && !update.getForm().get("quant").toString().trim().isEmpty()) {
                obj.setQuant(Integer.parseInt(update.getForm().get("quant").toString()));
            }
            if (update.getForm().get("preco") != null && !update.getForm().get("preco").toString().trim().isEmpty()) {
                obj.setPreco(BigDecimal.valueOf(Double.parseDouble(update.getForm().get("preco").toString())));
            }
            if (update.getForm().get("codcategoria") != null && !update.getForm().get("codcategoria").toString().trim().isEmpty()) {
                Categoria citem = Categoriadao.buscarPorChavePrimaria(Integer.parseInt(update.getForm().get("codcategoria").toString()));
                if (clista.contains(citem)) {
                    obj.setCodcategoria(Categoriadao.buscarPorChavePrimaria(Integer.parseInt((update.getForm().get("codcategoria").toString()))));
                } else {
                    count++;
                    msg += "Selecione categoria";
                    classe = "alert-danger";
                }
            } 
            if (update.getForm().get("codmarca") != null && !update.getForm().get("codmarca").toString().trim().isEmpty()) {
                Marca mitem = Marcadao.buscarPorChavePrimaria(Integer.parseInt(update.getForm().get("codmarca").toString()));
                if (mlista.contains(mitem)) {
                    obj.setCodmarca(Marcadao.buscarPorChavePrimaria(Integer.parseInt((update.getForm().get("codmarca").toString()))));
                } else {
                    count++;
                    msg += "Selecione Marca";
                    classe = "alert-danger";
                }
            }
            if (update.getForm().get("destaque") != null) {
                obj.setDestaque(true);
            } else {
                obj.setDestaque(false);
            }
            if (update.getFiles().size() != 0 && update.getFiles().get(0) != null && !update.getFiles().get(0).toString().trim().isEmpty()) {
                obj.setImagem1((update.getFiles().get(0).toString()));
            }
            if (update.getFiles().size() >= 2 && update.getFiles().get(1) != null && !update.getFiles().get(1).toString().trim().isEmpty()) {
                obj.setImagem2((update.getFiles().get(1).toString()));
            }
            if (update.getFiles().size() >= 3 && update.getFiles().get(2) != null && !update.getFiles().get(2).toString().trim().isEmpty()) {
                obj.setImagem3((update.getFiles().get(2).toString()));
            }
            if (count == 0 && dao.incluir(obj)) {
                response.sendRedirect("add-ok.jsp");
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
                        <label>Titulo</label>
                        
                        <input class="form-control" type="text" name="titulo" required />
                    </div>
                        <div class="form-group">
                        <label>Descricao</label>
                        
                        <input class="form-control" type="text" name="descricao" required />
                    </div>
                    
                        <div class="form-group">
                        <label>Quantidade</label>
                        
                        <input class="form-control" type="text" name="quant" required />
                    </div>
                              
                        <label>Preço</label>
                        <input class="form-control" name="preco" type="number" required />
                        
                              <label>Categoria</label>
                        <select class="form-control" name="codcategoria">
                            <option>Selecionar Categoria</option>
                            <%
                                for (Categoria item : clista){
                            %>
                            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
                            <%
                                }
                            %>
                        </select>
                        
                        
                        <label>Marca</label>
                        <select  class="form-control" name="codmarca">
                            <option>Selecionar Marca</option>
                            <%
                                for (Marca item : mlista){
                            %>
                            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
                            <%
                                }
                            %>
                               </select>
                        
                              <label>Primeira imagem</label>
                        <input class="form-control" name="imagem1" type="file" required />
                        
                        <label>Segunda imagem</label>
                        <input class="form-control" name="imagem2" type="file"  />
                        
                        <label>Terceira imagem</label>
                        <input class="form-control" name="imagem3" type="file"  />
                    
                    <div class="form-group">
                        <label>Destaque</label>
                   <input type="checkbox" name="destaque" /><br />
                    </div>
                    

                    <button class="btn btn-primary btn-sm" type="submit" >Salvar</button>
                
            </form>

        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>