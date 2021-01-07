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
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index1.html">Requerimientos</a>
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
                        <a class="dropdown-item" href="/Practica_laboratorio_1/LogOutControlador">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Usuario</div>
                           
                  
                             <a class="nav-link" href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/register_pro.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Registrar Producto
                            </a>
                  
                            <a class="nav-link" href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/tablaAdmin.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Listar Productos
                            </a>
                            
                             <a class="nav-link" href="/Practica_laboratorio_1/ListarRequerimientosControlador?dir=c">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Listar Requerimientos
                            </a>
                            
                        </div>
                    </div>
                    
                    <div class="sb-sidenav-footer">
                        <div class="small">Logeado como:</div>
                        Admin
                    </div>
                </nav>
                
            </div>
          <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Tables</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index1.html">Inicio</a></li>
                            <li class="breadcrumb-item active">Listado de Requerimientos</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                              
                              <form action="/Practica_laboratorio_1/AceptarRequerimientoControlador" method="post">
                              	
                              	<div class="form-group">
                                     <label class="small mb-1" for="inputid">ID del Requerimiento</label>
                                     <input class="form-control py-4" name="id" id="inputid" type="number" placeholder="Ingrese el id" />
                                        
                                </div>
                                
                                <input class="btn btn-primary btn-block" name="apr" type="submit" value="Aprobar"/>
                              	<input class="btn btn-primary btn-block" name="rec" type="submit" value="Rechazar"/>
                                
                              
                              </form>
                              
                               
                            </div>
                        </div>
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
                                                <th>Producto</th>
                                                <th>Cantidad</th>
                                                <th>Estado</th>
                                                
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            <c:set var="pr" scope="request" value="${productos}" />
                                            <c:forEach var="rq" items="${requerimientos}" varStatus="loop">
                                            
                                            	
                                            	<tr>
                                            		<td><c:out value="${rq.getId()}"/></td>
                                            		<td><c:out value="${pr[loop.index]}"/></td> 
                                            		<td><c:out value="${rq.getCantidad()}"/></td>
                                            		<td><c:out value="${rq.getEstado()}"/></td>  
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