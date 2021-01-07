<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Requerimientos de compra</title>
        <link href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <title>Requerimientos de Compra Registro</title>
        <link href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
    
    	<%@page import="java.util.ArrayList"%>	
	    <%@page import="java.util.List"%>
	    <%@page import="ups.edu.ec.bean.Producto"%>
	    <%@page import="ec.edu.ups.dao.DAOFactory"%>
	    <%@page import="ec.edu.ups.dao.ProductoDAO"%>
	    <%@page import="java.sql.Connection"%>
	    <%@page import="java.sql.DriverManager"%>
	    <%@page import="java.sql.SQLException"%>
	    
	    <%
		    try {	
		        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		    } catch (Exception ex) {
		        // handle the error
		    }
	    
	    %>
    
    	<c:set var="p" scope="request" value="${producto.id}" />
    	<c:set var="c" scope="request" value="${cantidad}" />
    	<c:set var="m" scope="request" value="${mensaje}" />
    	<c:set var="i" scope="request" value="${id}" />
    
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
            
                <main>
                
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Registrar Requerimiento de Compra</h3></div>
                                    <div class="card-body">
                                        <form action="/Practica_laboratorio_1/ActualizarRequerimientoControlador" method="post">
                                            <div class="form-row">
                                            	<div class="col-md-6">
                                                <div class="form-group">
                                                        <label class="small mb-1" for="inputid">id_producto</label><br>
                                                        <input class="form-control py-4" id="inputid" name="id" type="number" value="${p}" placeholder="Ingrese el id del producto" />
                                                   		<label class="small mb-1" for="inputcantidad">Cantidad</label><br>
                                                        <input class="form-control py-4" id="inputid" name="cant" type="number" value="${c}" placeholder="Ingrese la cantidad a solicitar" />
                                                   
                                                   		<input  id="id_req" name="id_req" type="hidden" value="${i}"  />
                                                   
                                                    </div>
                                                           <div class="form-group mt-4 mb-0">
                                                           <input class="btn btn-primary btn-block" type="submit" value="Actualizar Requerimiento"/>
                                                           
                                                           <a class="btn btn-primary btn-block" href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/home_user.jsp">				
								                                Cancelar
								                            </a>
                                                           
                                                           </div>
                                                           
                                                           <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                           		<p>${m}</p>
                                                           </div>
                                                           
                                                </div>
                                            </div>       
                                        </form>
                                    </div>
                                    <!-- <div class="card-footer text-center">
                                        <div class="small"><a href="login.html">Ya tienes una cuenta? ir a login</a></div>
                                    </div>- -->
                                </div>
                            </div>
                        </div>
                    </div>
                  
                    <div class="container-fluid">
                        <h1 class="mt-4">Listado</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Inicio</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                DataTable Example
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre</th>
                                                <th>Precio</th>
                                                <th>Descripcion</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            
                                            <% ProductoDAO productoDAO = DAOFactory.getFactory().getProductoDAO(); %>
                        					<% int id = (int) pageContext.getAttribute("empresa_id", PageContext.SESSION_SCOPE); %>
                        					<% List<Producto> productos = productoDAO.find_emp(id); %>
                        					
                                            <%
													
												for (Producto pro : productos) {
													
													out.println("<tr>");
													out.println("<td>"+pro.getId()+"</td>");
													out.println("<td>"+pro.getNombre()+"</td>");
													out.println("<td>"+pro.getPrecio()+"</td>");
													out.println("<td>"+pro.getDescripcion()+"</td>");
													out.println("</tr>");
													
												}
											
											%>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
               
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Requerimientos de Compra @2020</div>
                            <div>
                                <a href="#">Politicas de Privacidad</a>
                                &middot;
                                <a href="#">Terminos &amp; Condiciones</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/assets/demo/chart-area-demo.js"></script>
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/assets/demo/datatables-demo.js"></script>
    </body>
</html>