<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Usuario</title>
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
                <h4><i class="fas fa-user-plus"></i> Formulario de Usuario</h4>
            </div>
            
            <div class="card-body">
                <form>
                    <div class="form-section">
                        <h5><i class="fas fa-user"></i> Datos Personales</h5>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">DNI <span class="required">*</span></label>
                                <input type="text" name="dni" class="form-control" required maxlength="8" pattern="[0-9]{7,8}">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">CUIL <span class="required">*</span></label>
                                <input type="text" name="cuil" class="form-control" required maxlength="13" pattern="[0-9]{2}-[0-9]{8}-[0-9]{1}">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="form-label">Nombre <span class="required">*</span></label>
                                <input type="text" name="nombre" class="form-control" required maxlength="50">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Apellido <span class="required">*</span></label>
                                <input type="text" name="apellido" class="form-control" required maxlength="50">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-4">
                                <label class="form-label">Sexo <span class="required">*</span></label>
                                <select name="sexo" class="form-select" required>
                                    <option value="">Seleccionar...</option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                    <option value="Otro">Otro</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Nacionalidad <span class="required">*</span></label>
                                <select name="nacionalidad" class="form-select" required>
                                    <option value="">Seleccionar...</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Brasil">Brasil</option>
                                    <option value="Chile">Chile</option>
                                    <option value="Paraguay">Paraguay</option>
                                    <option value="Uruguay">Uruguay</option>
                                    <option value="Otra">Otra</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Fecha de Nacimiento <span class="required">*</span></label>
                                <input type="date" name="fechaNacimiento" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-section">
                        <h5><i class="fas fa-address-book"></i> Datos de Contacto</h5>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">Email <span class="required">*</span></label>
                                <input type="email" name="email" class="form-control" required maxlength="100">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Teléfono <span class="required">*</span></label>
                                <input type="tel" name="telefono" class="form-control" required maxlength="15">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-3">
                                <label class="form-label">Provincia <span class="required">*</span></label>
                                <select name="provincia" class="form-select" required>
                                    <option value="">Seleccionar...</option>
                                    <option value="Buenos Aires">Buenos Aires</option>
                                    <option value="Córdoba">Córdoba</option>
                                    <option value="Mendoza">Mendoza</option>
                                    <option value="Santa Fe">Santa Fe</option>
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label">Localidad <span class="required">*</span></label>
                                <select name="localidad" class="form-select" required>
                                    <option value="">Seleccionar...</option>
                                    <option value="La Plata">La Plata</option>
                                    <option value="Mar del Plata">Mar del Plata</option>
                                    <option value="Bahía Blanca">Bahía Blanca</option>
                                    <option value="Córdoba">Córdoba</option>
                                    <option value="Mendoza">Mendoza</option>
                                    <option value="Rosario">Rosario</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                               	<label class="form-label">Dirección <span class="required">*</span></label>
                                <input type="text" name="direccion" class="form-control" required maxlength="100">
                            </div>
                        </div>
                    </div>

                    <div class="form-section">
                        <h5><i class="fas fa-key"></i> Datos de Usuario</h5>
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">Nombre de Usuario <span class="required">*</span></label>
                                <input type="text" name="usuario" class="form-control" required maxlength="20" pattern="[a-zA-Z0-9]{3,20}">
                                <div class="form-text">Mínimo 5 caracteres. Solo letras y números.</div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-check mt-4">
                                    <input class="form-check-input" type="checkbox" name="esAdmin" id="esAdmin" value="true">
                                    <label class="form-check-label" for="esAdmin">
                                        <strong>Es Administrador</strong>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-6">
                                <label class="form-label">Contraseña <span class="required">*</span></label>
                                <input type="password" name="password" class="form-control" required minlength="8" maxlength="20">
                                <div class="form-text">Mínimo 8 caracteres.</div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Confirmar Contraseña <span class="required">*</span></label>
                                <input type="password" name="confirmPassword" class="form-control" required minlength="8" maxlength="20">
                            </div>
                        </div>
                    </div>

                    <div class="d-flex justify-content-end mt-4">
                        <a href="UsuariosListado.jsp" class="btn btn-secondary me-2">
                            <i class="fas fa-times"></i> Cancelar
                        </a>
                        <button type="submit" class="btn btn-success">
                            <i class="fas fa-check"></i> Aceptar y Continuar
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>