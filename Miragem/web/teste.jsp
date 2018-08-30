<%-- 
    Document   : teste
    Created on : Aug 29, 2018, 9:05:40 PM
    Author     : Admin
--%>

<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="miragem.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Teste Me</h1>
        
        <%
            Livro livro = new Livro();
            livro.setTitulo("Surra na Pantera");
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("MiragemPU");
            EntityManager em = emf.createEntityManager();
            em.persist(livro);
            em.close();
            emf.close();
        %>
    </body>
</html>
