package be.ucll.demo_week4_FC.ui.controller;

import be.ucll.demo_week4_FC.domain.db.DierDB;
import be.ucll.demo_week4_FC.domain.model.Dier;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private final DierDB db = new DierDB();

    public Controller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = "home";
        if (request.getParameter("command") != null) {
            command = request.getParameter("command");
        }
        String destination;
        switch (command) {
            case "home":
                destination = home(request, response);
                break;
            case "overview":
                destination = overview(request, response);
                break;
            case "zoekFormulier":
                destination = zoekFormulier(request, response);
                break;
                case "zoekConfirmation":
                destination = zoekConfirmation(request, response);
                break;
            case "zoek":
                destination = zoek(request,response);
                break;
            case "meestHongerige":
                destination = meestHongerige(request, response);
                break;
            default:
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String zoekConfirmation(HttpServletRequest request, HttpServletResponse response) {
        return "zoekConfirmation.jsp";
    }

    private String meestHongerige(HttpServletRequest request, HttpServletResponse response) {

        request.setAttribute("meestHongerige", db.getMeestHongerigeDier());
        return "meestHongerige.jsp";
    }

    private String zoek(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("naam");
        request.setAttribute("dier",db.vind(naam));
        return "result.jsp";
    }

    private String zoekFormulier(HttpServletRequest request, HttpServletResponse response) {
        return "zoekFormulier.jsp";
    }


    private String home(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("aantal", db.getAantal());
        return "index.jsp";
    }

    private String overview(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("dieren", db.getAlle());
        return "overview.jsp";
    }



}
