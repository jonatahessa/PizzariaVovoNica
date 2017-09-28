/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonat
 */
@WebServlet(name = "GetSabores", urlPatterns = {"/GetSabores"})
public class GetSabores extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<Produto> bacon = Utils.ListarPizzasPaginaInicialBacon();
        List<Produto> calabresa = Utils.ListarPizzasPaginaInicialCalabresa();
        List<Produto> frango = Utils.ListarPizzasPaginaInicialFrango();
        List<Produto> lombo = Utils.ListarPizzasPaginaInicialLombo();
        List<Produto> vegetais = Utils.ListarPizzasPaginaInicialVegetais();
        List<Produto> frutos = Utils.ListarPizzasPaginaInicialFrutos();
        List<Produto> presunto = Utils.ListarPizzasPaginaInicialPresunto();
        List<Produto> queijo = Utils.ListarPizzasPaginaInicialQueijo();
        List<Produto> especiais = Utils.ListarPizzasPaginaInicialEspeciais();
        List<Produto> doces = Utils.ListarPizzasPaginaInicialDoces();
        List<Produto> promo = Utils.ListarPizzasPaginaInicialPromocoes();
        request.setAttribute("bacon", bacon);
        request.setAttribute("calabresa", calabresa);
        request.setAttribute("frango", frango);
        request.setAttribute("lombo", lombo);
        request.setAttribute("vegetais", vegetais);
        request.setAttribute("frutos", frutos);
        request.setAttribute("presunto", presunto);
        request.setAttribute("queijo", queijo);
        request.setAttribute("especiais", especiais);
        request.setAttribute("doces", doces);
        if (promo != null) {
            for (Produto prod : promo) {
                String promoConvert = prod.getDescricao().replaceAll("\n", "<br/>");
                prod.setDescricao(promoConvert);
            }
        }
        request.setAttribute("promocoes", promo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(GetSabores.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
