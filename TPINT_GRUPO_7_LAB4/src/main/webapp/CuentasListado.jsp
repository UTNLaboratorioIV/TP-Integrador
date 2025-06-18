<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuentas</title>
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
                <h4><i class="fas fa-book-open"></i> Gestión de Cuentas</h4>
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
						        		<option value="tipoCuenta">Tipo de Cuenta</option>
						        		<option value="estado">Estado</option>
						        		<option value="rangoFecha">Fecha de Creación</option>
							        	<option value="rangoSaldo">Saldo</option>
							      	</select>
								</div>
							</div>
							
							<div class="row g-3 mb-3" id="filtroTipoCuenta" style="display: none;">
							    <div class="col-md-6">
							      	<label class="form-label">Tipo de Cuenta:</label>
							      	<select class="form-select">
							       		<option value="todos">Todos</option>
					        			<option value="Cuenta Corriente">Cuenta Corriente</option>
					        			<option value="Caja de Ahorro">Caja de Ahorro</option>
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
							  	
						  	<div class="row g-3 mb-3" id="filtroSaldo" style="display: none;">
						    	<div class="col-md-4">
						      		<label class="form-label" for="saldoMinimo">Saldo Mínimo:</label>
									<input type="number" id="saldoMinimo" name="saldoMinimo" class="form-control" min="0" step="0.01" placeholder="0.00">
							    </div>
							    
								<div class="col-md-4">
						      		<label class="form-label" for="saldoMaximo">Saldo Maximo:</label>
									<input type="number" id="saldoMaximo" name="saldoMaximo" class="form-control" min="0" step="0.01" placeholder="0.00">
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
		        	<a href="CuentasABM.jsp" class="btn btn-success">
		            	<i class="fas fa-plus"></i> Agregar Cuenta
		            </a>
		            <div class="pagination-info">Mostrando 1-10 de 45 registros</div>
		        </div>
	
	       	    <div class="table-responsive">
	       			<table class="table table-striped table-hover">
	                	<thead class="table-dark">
	                    	<tr>
	                        	<th>Nº Cuenta</th>
	                            <th>Cliente</th>
	                            <th>Tipo de Cuenta</th>
	                            <th>Fecha Creación</th>
	                            <th>CBU</th>
	                            <th>Saldo</th>
	                            <th>Estado</th>
	                            <th>Acciones</th>
	                        </tr>
						</thead>
						<tbody>
	                    	<tr>
	                        	<td>012-123456789-000</td>
	                            <td>Pérez, Juan</td>
	                            <td>Caja de Ahorro</td>
	                            <td>01/01/2025</td>
	                            <td>012012123456789001</td>
	                            <td>10.000,00</td>
	                            <td><span class="badge bg-success">Activo</span></td>
	                            <td>
	                            	<a href="CuentasABM.jsp?id=1" class="btn btn-primary btn-sm btn-action" title="Modificar">
	                                	<i class="fas fa-edit"></i>
	                                </a>
	                                <a href="CuentasABM.jsp?id=2" class="btn btn-danger btn-sm btn-action" title="Deshabilitar">
	                                	<i class="fas fa-ban"></i>
	                                </a>
	                            </td>
							</tr>
	                        <tr>
								<td>012-101010101-000</td>
								<td>Messi, Lionel</td>
								<td>Cuenta Corriente</td>
								<td>18/12/2022</td>
								<td>012012101010101002</td>
								<td>100.000,00</td>
								<td><span class="badge bg-success">Activo</span></td>
								<td>
									<a href="CuentasABM.jsp?id=1" class="btn btn-primary btn-sm btn-action" title="Modificar">
										<i class="fas fa-edit"></i>
									</a>
									<a href="CuentasABM.jsp?id=1" class="btn btn-danger btn-sm btn-action" title="Deshabilitar">
										<i class="fas fa-ban"></i>
									</a>
								</td>
							</tr>
							<tr>
								<td>012-987654321-000</td>
								<td>Castillo, Naomi</td>
								<td>Caja de Ahorro</td>
								<td>01/06/2024</td>
								<td>012012987654321002</td>
								<td>40.000,00</td>
								<td><span class="badge bg-secondary">Inactivo</span></td>
								<td>
									<a href="CuentasABM.jsp?id=1" class="btn btn-primary btn-sm btn-action" title="Modificar">
										<i class="fas fa-edit"></i>
									</a>
									<a href="CuentasABM.jsp?id=2" class="btn btn-danger btn-sm btn-action" title="Deshabilitar">
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

	<script>
		function desplegarFiltrosAvanzados() {
			const filtros = document.getElementById("filtrosAvanzados");
			filtros.style.display = filtros.style.display === "none" || filtros.style.display === "" ? "block" : "none";
		}
	
		function mostrarFiltros() {
			const tipo = document.getElementById("tipoFiltro").value;
		  	const filtros = ["filtroTipoCuenta", "filtroEstado", "filtroFecha", "filtroSaldo"];

		  	filtros.forEach(id => document.getElementById(id).style.display = "none");

		  	switch (tipo) {
	    		case "tipoCuenta":
		      		document.getElementById("filtroTipoCuenta").style.display = "flex";
		      	break;
			  	case "estado":
	      			document.getElementById("filtroEstado").style.display = "flex";
	      		break;
		    	case "rangoFecha":
		      		document.getElementById("filtroFecha").style.display = "flex";
		      	break;
		    	case "rangoSaldo":
		      		document.getElementById("filtroSaldo").style.display = "flex";
		      	break;
		  	}
		}
	</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>