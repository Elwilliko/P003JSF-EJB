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
        <title>Requerimientos de Compra Registro</title>
        <link href="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
    	<c:set var="l" scope="session" value="${catg}" />
    	<c:set var="m" scope="request" value="${mensaje}" />
    	<c:set var="producto" scope="request" value="${producto_modificar}"/>
    
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Modificar Producto</h3></div>
                                    <div class="card-body">
                                        <form action="/Practica_laboratorio_1/ModificarProductoControlador" method="post">
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                <div class="form-group">
                                                        <label class="small mb-1" for="inputid">Id</label>
                                                        <input class="form-control py-4" name="id" id="inputid" type="number" placeholder="Ingrese el id" value="${producto.id }"></input>
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputName">Nombre</label>
                                                        <input class="form-control py-4" name="nombre" id="inputName" type="text" placeholder="Ingrese el nombre" value="${producto.nombre }"></input>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputPrecio">Precio</label>
                                                        <input class="form-control py-4" name="precio" id=inputPrecio type="number" placeholder="Ingrese el precio" value="${producto.precio }"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputdescripcion">Descripcion</label>
                                                        <input class="form-control py-4" name="descrip" id="inputdescripcion" type="text" placeholder="Ingrese la descripcion" value="${producto.descripcion}"/>                                                     
                                                                                                                
                                                    </div>
                                                    
                                                    <div class="form-group">
                                                    
                                                        <label class="small mb-1" for="inputdescripcion">Categoria</label>
                                                        <select id="cars" name="categ" class="custom-select">
														  <c:forEach items="${catg}" var="category">
													        <option value="${category.getId()}">${category.getNombre()}</option>
													    </c:forEach>
														</select>                      
                                                                                                                
                                                    </div>
                                                    </div>

                                            <div class="form-group mt-4 mb-0">
                                            	<input class="btn btn-primary btn-block" type="submit" value="Modificar Producto"/>            
                                            </div>
                                            
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                           		<p>${m}</p>
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
        
        <script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/js/jquery-3.3.1.min.js"></script>
<script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/js/jquery-ui.js"></script>
<script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/js/bootstrap.min.js"></script>
<script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/js/aos.js"></script>


<script src="/Practica_laboratorio_1/startbootstrap-sb-admin-gh-pages/dist/private/js/main.js"></script>
    </body>
</html>
