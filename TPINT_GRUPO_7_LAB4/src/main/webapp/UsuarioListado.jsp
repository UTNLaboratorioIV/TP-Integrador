<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    
    <style>
        .card-header {
            background-color: #007bff;
            color: white;
        }
        .btn-action {
            margin: 0 2px;
        }
        .pagination-info {
            color: #6c757d;
            font-size: 0.9em;
        }
    </style>
    
</head>
<body>

    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h4><i class="fas fa-users"></i> Gestión de Usuarios</h4>
            </div>
            
            <div class="card-body">
               <form class="container mt-3 border rounded p-3 bg-light">
  					<div class="row g-3 align-items-end">
				      		
						<div class="row g-3 mb-3">
							<div class="col-md-8">
							    <label for="busquedaTexto" class="form-label">Búsqueda por Texto</label>
							    <input type="text" id="busquedaTexto" name="busquedaTexto" class="form-control" placeholder="Ingrese texto...">
							</div>
						  	<div class="col-md-4 d-flex align-items-end">
						    	<button type="button" class="btn btn-outline-secondary" onclick="desplegarFiltrosAvanzados()">Filtros Avanzados</button>
						  	</div>
						</div>
							
						<div id="filtrosAvanzados" style="display: none;">
							<div class="row g-3 mb-3">
						    	<div class="col-md-6">
						      		<label for="tipoFiltro" class="form-label">Tipo de Filtro:</label>
						      		<select id="tipoFiltro" class="form-select" onchange="mostrarFiltros()">
						        		<option value="">Seleccione</option>
						        		<option value="estado">Estado</option>
						        		<option value="sexo">Sexo</option>
						        		<option value="nacionalidad">Nacionalidad</option>
						        		<option value="localidad">Localidad</option>
							        	<option value="rangoFecha">Fecha de Nacimiento</option>
							      	</select>
								</div>
							</div>
							
							<div class="row g-3 mb-3" id="filtroEstado" style="display: none;">
								<div class="col-md-6">
									<label class="form-label">Estado:</label>
							      	<select class="form-select">
							        	<option value="todos">Todos</option>
							        	<option>Activo</option>
							        	<option>Inactivo</option>
							      	</select>
								</div>
							</div>
							
							<div class="row g-3 mb-3" id="filtroSexo" style="display: none;">
							    <div class="col-md-6">
							      	<label class="form-label">Sexo:</label>
							      	<select class="form-select">
							       		<option value="todos">Todos</option>
							       		<option>Masculino</option>
							       		<option>Femenino</option>
							       		<option>Otro</option>
						      		</select>
							   	</div>
						  	</div>
							
						 	<div class="row g-3 mb-3" id="filtroNacionalidad" style="display: none;">
								<div class="col-md-6">
									<label class="form-label">Nacionalidad:</label>
							      	<select class="form-select">
							        	<option value="todos">Todos</option>
							        	<option>Argentina</option>
							        	<option>Bolivia</option>
							        	<option>Brasil</option>
							        	<option>Chile</option>
							        	<option>Paraguay</option>
							        	<option>Uruguay</option>
							      	</select>
							  	</div>
							</div>
							
							<div class="row g-3 mb-3" id="filtroLocalidad" style="display: none;">
								<div class="col-md-4">
							    	<label class="form-label">Provincia:</label>
							      	<select class="form-select" id="provincia" onchange="cargarLocalidades()">
							       		<option value="">Seleccione Provincia</option>
							       		<option value="buenosaires">Buenos Aires</option>
							       		<option value="cordoba">Córdoba</option>
							       		<option value="mendoza">Mendoza</option>
							     	</select>
							   	</div>
							
							  	<div class="col-md-4">
						      		<label class="form-label">Localidad:</label>
						      		<select class="form-select" id="localidad" disabled>
						        		<option>Seleccione una provincia primero</option>
						      		</select>
						    	</div>
						  	</div>
							
						 	<div class="row g-3 mb-3" id="filtroFecha" style="display: none;">
							    <div class="col-md-4">
									<label class="form-label">Fecha mínima:</label>
									<input type="date" class="form-control">
						    	</div>
							    
						    	<div class="col-md-4">
						      		<label class="form-label">Fecha máxima:</label>
						      		<input type="date" class="form-control">
						    	</div>
						  	</div>
						</div>
				
					    <div class="col-md-4 d-flex gap-2">
					      	<button type="submit" class="btn btn-primary mt-4"><i class="fas fa-search"></i> Buscar</button>
					      	<button type="reset" class="btn btn-secondary mt-4"><i class="fas fa-times"></i> Limpiar</button>
					    </div>
					</div>
				</form>

                <div class="d-flex justify-content-between align-items-center my-3">
                    <a href="UsuariosABM.jsp" class="btn btn-success">
                        <i class="fas fa-plus"></i> Agregar Usuario
                    </a>
                    <div class="pagination-info"> Mostrando 1-10 de 45 registros </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th>DNI</th>
                                <th>Nombre</th>
                                <th>F.Nacimiento</th>
                                <th>Nacionalidad</th>
                                <th>Localidad</th>
                                <th>Sexo</th>
                                <th>Usuario</th>
                                <th>Tipo</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>12345678</td>
                                <td>Pérez, Juan</td>
                                <td>01/01/1999</td>
                                <td>Argentina</td>
                                <td>San Fernando</td>
                                <td>Masculino</td>
                                <td>jperez</td>
                                <td><span class="badge bg-info">Cliente</span></td>
                                <td><span class="badge bg-success">Activo</span></td>
                                <td>
                                    <a href="UsuariosABM.jsp?id=1" class="btn btn-primary btn-sm btn-action" title="Modificar">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="UsuariosABM.jsp?id=2" class="btn btn-danger btn-sm btn-action" title="Deshabilitar">
                                        <i class="fas fa-ban"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>87654321</td>
                                <td>Messi, Lionel</td>
                                <td>24/06/1987</td>
                                <td>Argentina</td>
                                <td>Rosario</td>
                                <td>Masculino</td>
                                <td>liomessi10</td>
                                <td><span class="badge bg-info">Cliente</span></td>
                                <td><span class="badge bg-success">Activo</span></td>
                                <td>
                                    <a href="UsuariosABM.jsp?id=1" class="btn btn-primary btn-sm btn-action" title="Modificar">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="UsuariosABM.jsp?id=2" class="btn btn-danger btn-sm btn-action" title="Deshabilitar">
                                        <i class="fas fa-ban"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>11223344</td>
                                <td>Rodriguez, Carla</td>
								<td>20/03/1978</td>
                                <td>Uruguay</td>
                                <td>San Isidro</td>
                                <td>Femenino</td>
                                <td>crodriguez</td>
                                <td><span class="badge bg-warning">Admin</span></td>
                                <td><span class="badge bg-secondary">Inactivo</span></td>
                                <td>
                                    <a href="UsuariosABM.jsp?id=1" class="btn btn-primary btn-sm btn-action" title="Modificar">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="UsuariosABM.jsp?id=2" class="btn btn-danger btn-sm btn-action" title="Deshabilitar">
                                        <i class="fas fa-ban"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <nav aria-label="Paginación">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <span class="page-link">Anterior</span>
                        </li>
                        <li class="page-item active"><a class="page-link" href="?page=1">1</a></li>
                        <li class="page-item"><a class="page-link" href="?page=2">2</a></li>
                        <li class="page-item"><a class="page-link" href="?page=3">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="?page=2">Siguiente</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <!-- JavaScript para mostrar filtros según selección -->
	<script>
		function desplegarFiltrosAvanzados() {
			const filtros = document.getElementById("filtrosAvanzados");
			filtros.style.display = filtros.style.display === "none" || filtros.style.display === "" ? "block" : "none";
		}
	
		function mostrarFiltros() {
			const tipo = document.getElementById("tipoFiltro").value;
		  	const filtros = ["filtroEstado", "filtroSexo", "filtroNacionalidad", "filtroLocalidad", "filtroFecha"];

		  	filtros.forEach(id => document.getElementById(id).style.display = "none");

		  	switch (tipo) {
				case "estado":
	      			document.getElementById("filtroEstado").style.display = "flex";
	      		break;
				case "sexo":
		      		document.getElementById("filtroSexo").style.display = "flex";
		      	break;
		    	case "nacionalidad":
		      		document.getElementById("filtroNacionalidad").style.display = "flex";
		      	break;
		    	case "localidad":
		      		document.getElementById("filtroLocalidad").style.display = "flex";
		      	break;
		    	case "rangoFecha":
		      		document.getElementById("filtroFecha").style.display = "flex";
		      	break;
		  	}
		}
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>
