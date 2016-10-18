/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import modelo.Produto;

/**
 *
 * @author aluno
 */
public class ProdutoDAO  extends  GenericDAO<Produto,Integer> {
    public ProdutoDAO()
    {
        super(Produto.class);
    }
       public List<Produto> listarAleatorio(int quantidade) {
        return em.createNativeQuery("Select * from Produto p where p.destaque = true order by random() limit " + quantidade, Produto.class).getResultList();
    }
       public List<Produto> listar(Integer codigo, String tipo){
           List<Produto> lista;
           try{
               String namedquery;
               if(tipo.equals("M")){
                   namedquery="findByMarca";
               }else{
                   namedquery="findByCategoria";
               }lista =em.createNamedQuery("Produto."+namedquery).setParameter("codigo",codigo).getResultList();
           }catch(Exception ex){
               ex.printStackTrace();
               lista =null;
           }
           return lista;
       }
}
