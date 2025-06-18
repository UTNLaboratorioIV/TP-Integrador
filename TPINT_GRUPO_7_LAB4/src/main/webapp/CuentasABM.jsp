<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alta de Cuenta</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        .card-header {
            background-color: #007bff;
            color: white;
        }
        .required {
            color: red;
        }
        .form-section {
            border: 1px solid #dee2e6;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
        }
        .form-section h5 {
            color: #495057;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h4><i class="fas fa-file-circle-plus"></i> Formulario de Cuenta</h4>
            </div>
            
            <div class="card-body">
                <form>
                    <div class="form-section">
					    <h5><i class="fas fa-user-check"></i> Buscar Cliente</h5>
					    <div class="row mb-3 align-items-end">
						    <div class="col-md-8">
						        <label class="form-label">Buscar por DNI o Nombre <span class="required">*</span></label>
						        <input type="text" id="busquedaCliente" class="form-control" placeholder="Ingrese texto..." list="sugerenciasClientes" required>
						        <datalist id="sugerenciasClientes">
						            <option value="Pérez, Juan - DNI 12345678">
						            <option value="Messi, Lionel - DNI 87654321">
						            <option value="Rodriguez, Carla - DNI 11223344">
						        </datalist>
						    </div>
						    <div class="col-md-4 d-flex align-items-end">
						        <button type="button" class="btn btn-primary w-100">
						            <i class="fas fa-search"></i> Traer Datos
						        </button>
						    </div>
						</div>
					</div>

 					<div class="form-section">
                        <h5><i class="fas fa-user"></i> Datos del Cliente</h5>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">DNI</label>
                                <input type="text" name="dni" class="form-control" disabled maxlength="8" pattern="[0-9]{7,8}">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">CUIL</label>
                                <input type="text" name="cuil" class="form-control" disabled maxlength="13" pattern="[0-9]{2}-[0-9]{8}-[0-9]{1}">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="form-label">Nombre</label>
                                <input type="text" name="nombre" class="form-control" disabled maxlength="50">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Apellido</label>
                                <input type="text" name="apellido" class="form-control" disabled maxlength="50">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4">
                                <label class="form-label">Sexo</label>
                                <input type="text" name="sexo" class="form-control" disabled maxlength="50">
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Nacionalidad</label>
                                <input type="text" name="nacionalidad" class="form-control" disabled maxlength="50">
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Fecha de Nacimiento</label>
                                <input type="date" name="fechaNacimiento" class="form-control" disabled>
                            </div>
                        </div>
                    </div>

                    <div class="form-section">
                        <h5><i class="fas fa-wallet"></i> Datos de la Cuenta</h5>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Tipo de Cuenta <span class="required">*</span></label>
                                <select name="tipoCuenta" class="form-select" required>
                                    <option value="">Seleccionar tipo...</option>
                                    <option value="Caja de Ahorro">Caja de Ahorro</option>
                                    <option value="Cuenta Corriente">Cuenta Corriente</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label">Número de Cuenta</label>
                                <input type="text" class="form-control" readonly value="012-111122229-000" disabled>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">CBU</label>
                                <input type="text" class="form-control" readonly value="012013133555999001" disabled>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Saldo Inicial</label>
                                <input type="number" name="saldo" class="form-control" min="0" value="10000.00" disabled>
                            </div>
                        </div>
                    </div>

                    <div class="d-flex justify-content-end mt-4">
                        <a href="CuentasListado.jsp" class="btn btn-secondary me-2">
                            <i class="fas fa-times"></i> Cancelar
                        </a>
                        <button type="submit" class="btn btn-success">
                            <i class="fas fa-check"></i> Confirmar Alta
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
      