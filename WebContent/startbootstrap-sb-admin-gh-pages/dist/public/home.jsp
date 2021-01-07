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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
    
    <%@page import="java.util.ArrayList"%>	
    <%@page import="java.util.List"%>
    <%@page import="ups.edu.ec.bean.Empresa"%>
    <%@page import="ec.edu.ups.dao.DAOFactory"%>
    <%@page import="ec.edu.ups.dao.EmpresaDAO"%>	
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
    
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Requerimientos</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Buscar..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                      
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/public/login.jsp">Log in</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <!--  <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Admin</div>
                            <a class="nav-link" href="register.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Registrar Producto
                            </a>
                  
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Listar Productos
                            </a>
                        </div>
                    </div>-->
                    <div class="sb-sidenav-footer">
                        <div class="small">No logueado</div>
                        Invitado
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Sistema de Requerimientos de Compra</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Descubre</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Recomienda</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Experimenta</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Compara</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <% EmpresaDAO empresaDAO = DAOFactory.getFactory().getEmpresaDAO(); %>
                        <% List<Empresa> empresas = empresaDAO.find(); %>
                        
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                        Area Chart Example
                                    </div>
                                    
                                    
                                    <div class="select-body">
                                    
                                    	<form action="/Practica_laboratorio_1/ListarProductoEmpresaControlador" method="post">
                                    		<div class="col-md-6">
                                    			<div class="form-group">
                                    		
                                    				<label for="cars" class="card-header">Seleccione una empresa:</label>

													<select name="id" id="cars" class="custom-select">
													
													<%
													
														for (Empresa emp : empresas) {
															out.println("<option value=\""+emp.getId()+"\">"+emp.getNombre()+"</option>");
														}
													
													%>
													
													</select>
                                    			
	                                    		</div>
	                                    		<div class="form-group mt-4 mb-0">
	                                            	<input class="btn btn-primary btn-block" type="submit" value="¡Buscar!"/>            
	                                            </div>
	                                    		
	                                    	</div>
	                                    	
	                                    	
	                                    	
	                                    </form>
                                    
                                    	
                                    
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                Productos Ofrecidos
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                   <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                            	<th>Nombre</th>
                                                <th>Precio</th>
                                                <th>Descripcion</th>
                                                <th>Categoria</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            
                                            <c:set var="ct" scope="request" value="${categorias}" />
                                            <c:forEach var="pr" items="${productos}" varStatus="loop">
                                                                                        	
                                            	<tr>
                                            		<td><c:out value="${pr.getNombre()}"/></td>                                            		  
                                            		<td><c:out value="${pr.getPrecio()}"/></td>
                                            		<td><c:out value="${pr.getDescripcion()}"/></td>  
                                            		<td><c:out value="${ct[loop.index]}"/></td>
                                            	</tr>                                            
                                            
                                            </c:forEach>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
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
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/assets/demo/chart-area-demo.js"></script>
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/assets/demo/datatables-demo.js"></script>
    </body>
</html>
