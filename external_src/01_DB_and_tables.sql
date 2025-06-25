-- Drop de la base de datos
/*
DROP DATABASE IF EXISTS bancox;
*/

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS bancox;
USE bancox;

-- Tabla: Usuario_Tipo
CREATE TABLE Usuario_Tipo (
    usuario_tipo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_tipo_id_descripcion VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Usuario
CREATE TABLE Usuario (
    usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_nombre CHAR(50) NOT NULL,
    usuario_password VARCHAR(255) NOT NULL,
    usuario_tipo_id INT NOT NULL,
    usuario_estado BOOLEAN NOT NULL,
    FOREIGN KEY (usuario_tipo_id) REFERENCES Usuario_Tipo(usuario_tipo_id)
);

-- Tabla: Provincia
CREATE TABLE Provincia (
    provincia_id INT AUTO_INCREMENT PRIMARY KEY,
    provincia_nombre VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Cliente
CREATE TABLE Cliente (
    cliente_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    cliente_nombre VARCHAR(50) NOT NULL,
    cliente_apellido VARCHAR(50) NOT NULL,
    cliente_dni VARCHAR(15) NOT NULL UNIQUE,
    cliente_fecha_nacimiento DATE NOT NULL,
    cliente_email VARCHAR(100) NOT NULL,
    cliente_telefono VARCHAR(20),
    cliente_direccion VARCHAR(100),
    cliente_estado BOOLEAN NOT NULL,
    provincia_id INT,
    localidad VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (provincia_id) REFERENCES Provincia(provincia_id)
);

-- Tabla: Cuenta_Tipo
CREATE TABLE Cuenta_Tipo (
    cuenta_tipo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cuenta_tipo_descripcion VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Cuenta
CREATE TABLE Cuenta (
    cuenta_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    cuenta_tipo_id INT NOT NULL,
    cuenta_cbu VARCHAR(50) NOT NULL UNIQUE,
    cuenta_saldo FLOAT NOT NULL CHECK (cuenta_saldo >= 0),
    cuenta_estado BOOLEAN NOT NULL,
    cuenta_fecha_alta DATE,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (cuenta_tipo_id) REFERENCES Cuenta_Tipo(cuenta_tipo_id)
);

-- Tabla: Movimiento_Tipo
CREATE TABLE Movimiento_Tipo (
    movimiento_tipo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movimiento_tipo_descripcion VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Movimiento
CREATE TABLE Movimiento (
    movimiento_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cuenta_id INT NOT NULL,
    movimiento_tipo_id INT NOT NULL,
    movimiento_monto FLOAT NOT NULL CHECK (movimiento_monto >= 0),
    movimiento_descripcion VARCHAR(50),
    movimiento_fecha DATE NOT NULL,
    FOREIGN KEY (cuenta_id) REFERENCES Cuenta(cuenta_id),
    FOREIGN KEY (movimiento_tipo_id) REFERENCES Movimiento_Tipo(movimiento_tipo_id)
);

-- Tabla: Transferencia
CREATE TABLE Transferencia (
    transferencia_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cuenta_origen_id INT NOT NULL,
    cuenta_destino_id INT NOT NULL,
    cuenta_monto FLOAT NOT NULL CHECK (cuenta_monto > 0),
    cuenta_fecha DATE NOT NULL,
    FOREIGN KEY (cuenta_origen_id) REFERENCES Cuenta(cuenta_id),
    FOREIGN KEY (cuenta_destino_id) REFERENCES Cuenta(cuenta_id),
    CHECK (cuenta_origen_id <> cuenta_destino_id)
);

-- Tabla: Prestamo_Estado
CREATE TABLE Prestamo_Estado (
    prestamo_estado_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    prestamo_estado_descripcion VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Prestamo
CREATE TABLE Prestamo (
    prestamo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    cuenta_destino_id INT NOT NULL,
    prestamo_monto_total FLOAT NOT NULL CHECK (prestamo_monto_total > 0),
    prestamo_cuotas_totales INT NOT NULL CHECK (prestamo_cuotas_totales > 0),
    prestamo_cuotas_pagadas INT NOT NULL DEFAULT 0 CHECK (prestamo_cuotas_pagadas >= 0),
    prestamo_estado_id INT NOT NULL,
    prestamo_fecha_solicitud DATE NOT NULL,
    prestamo_fecha_respuesta DATE,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (cuenta_destino_id) REFERENCES Cuenta(cuenta_id),
    FOREIGN KEY (prestamo_estado_id) REFERENCES Prestamo_Estado(prestamo_estado_id)
);

-- Tabla: Cuota_Estado
CREATE TABLE Cuota_Estado (
    cuota_estado_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cuota_estado_descripcion VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Cuota
CREATE TABLE Cuota (
    cuota_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    prestamo_id INT NOT NULL,
    cuota_nro_cuota INT NOT NULL CHECK (cuota_nro_cuota > 0),
    cuota_monto FLOAT NOT NULL CHECK (cuota_monto > 0),
    fecha_vencimiento DATE NOT NULL,
    cuota_fecha_pago DATE,
    estado_cuota_id INT NOT NULL,
    FOREIGN KEY (prestamo_id) REFERENCES Prestamo(prestamo_id),
    FOREIGN KEY (estado_cuota_id) REFERENCES Cuota_Estado(cuota_estado_id)
);

-- DATOS PRE-CARGADOS EN EL SISTEMA

-- Usuario_Tipo
INSERT INTO Usuario_Tipo (usuario_tipo_id, usuario_tipo_id_descripcion) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- Cuenta_Tipo
INSERT INTO Cuenta_Tipo (cuenta_tipo_id, cuenta_tipo_descripcion) VALUES
(1, 'Caja de ahorro'),
(2, 'Cuenta corriente');

-- Movimiento_Tipo
INSERT INTO Movimiento_Tipo (movimiento_tipo_id, movimiento_tipo_descripcion) VALUES
(1, 'Alta de cuenta'),
(2, 'Alta de un préstamo'),
(3, 'Pago de préstamo'),
(4, 'Transferencia');

-- Prestamo_Estado
INSERT INTO Prestamo_Estado (prestamo_estado_id, prestamo_estado_descripcion) VALUES
(1, 'Pendiente'),
(2, 'Aprobado'),
(3, 'Rechazado');

-- Cuota_Estado
INSERT INTO Cuota_Estado (cuota_estado_id, cuota_estado_descripcion) VALUES
(1, 'Pendiente'),
(2, 'Pagada'),
(3, 'Atrasada');

-- Insert de provincias argentinas
INSERT INTO Provincia (provincia_id, provincia_nombre) VALUES
(1, 'Buenos Aires'),
(2, 'Catamarca'),
(3, 'Chaco'),
(4, 'Chubut'),
(5, 'Córdoba'),
(6, 'Corrientes'),
(7, 'Entre Ríos'),
(8, 'Formosa'),
(9, 'Jujuy'),
(10, 'La Pampa'),
(11, 'La Rioja'),
(12, 'Mendoza'),
(13, 'Misiones'),
(14, 'Neuquén'),
(15, 'Río Negro'),
(16, 'Salta'),
(17, 'San Juan'),
(18, 'San Luis'),
(19, 'Santa Cruz'),
(20, 'Santa Fe'),
(21, 'Santiago del Estero'),
(22, 'Tierra del Fuego'),
(23, 'Tucumán'),
(24, 'Ciudad Autónoma de Buenos Aires');

-- Usuario: superadmin (rol administrador, activo)
INSERT INTO Usuario (usuario_id, usuario_nombre, usuario_password, usuario_tipo_id, usuario_estado) VALUES
(1, 'superadmin', SHA2('abc123', 256), 1, TRUE);

-- POOL DE DATOS DE PRUEBA.
/*
-- Usuarios
INSERT INTO Usuario (usuario_id, usuario_nombre, usuario_password, usuario_tipo_id, usuario_estado) VALUES
(2, 'jperez', SHA2('cliente123', 256), 2, TRUE),
(3, 'mgomez', SHA2('cliente123', 256), 2, TRUE),
(4, 'cavila', SHA2('cliente123', 256), 2, TRUE),
(5, 'fgarcia', SHA2('cliente123', 256), 2, FALSE); -- cuenta inactiva

-- Clientes
INSERT INTO Cliente (cliente_id, usuario_id, cliente_nombre, cliente_apellido, cliente_dni, cliente_fecha_nacimiento, cliente_email, cliente_telefono, cliente_direccion, provincia_id, localidad) VALUES
(2, 2, 'Juan', 'Pérez', '12345678', '1990-05-14', 'jperez@mail.com', '1134567890', 'Av. Siempreviva 123', 1, 'La Plata'),
(3, 3, 'María', 'Gómez', '23456789', '1988-11-20', 'mgomez@mail.com', '1134567891', 'Calle Falsa 456', 24, 'CABA'),
(4, 4, 'Carlos', 'Avila', '34567890', '1975-07-01', 'cavila@mail.com', '1134567892', 'Pasaje Luna 789', 5, 'Córdoba'),
(5, 5, 'Florencia', 'García', '45678901', '1995-03-10', 'fgarcia@mail.com', '1134567893', 'Ruta 8 KM 45', 20, 'Rosario');

-- Cuentas
INSERT INTO Cuenta (cuenta_id, cliente_id, cuenta_tipo_id, cuenta_cbu, cuenta_saldo, cuenta_estado, cuenta_fecha_alta) VALUES
(2, 2, 1, '2222222222222222222222', 50000.00, TRUE, CURDATE()),
(3, 2, 2, '2222222222222222222223', 120000.00, TRUE, CURDATE()),
(4, 3, 1, '3333333333333333333333', 20000.00, TRUE, CURDATE()),
(5, 4, 2, '4444444444444444444444', 8000.00, TRUE, CURDATE()),
(6, 5, 1, '5555555555555555555555', 0.00, FALSE, CURDATE());

-- Movimiento tipo: 1 = Alta cuenta, 2 = Alta préstamo, 3 = Pago préstamo, 4 = Transferencia
INSERT INTO Movimiento (movimiento_id, cuenta_id, movimiento_tipo_id, movimiento_monto, movimiento_descripcion, movimiento_fecha) VALUES
(1, 2, 1, 0.00, 'Apertura de cuenta', CURDATE()),
(2, 3, 1, 0.00, 'Apertura de cuenta', CURDATE()),
(3, 3, 4, 5000.00, 'Transferencia a cuenta 4', CURDATE()),
(4, 4, 3, 2000.00, 'Pago cuota préstamo', CURDATE());

-- Transferencias
INSERT INTO Transferencia (transferencia_id, cuenta_origen_id, cuenta_destino_id, cuenta_monto, cuenta_fecha) VALUES
(1, 3, 4, 5000.00, CURDATE());

-- Préstamos
INSERT INTO Prestamo (prestamo_id, cliente_id, cuenta_destino_id, prestamo_monto_total, prestamo_cuotas_totales, prestamo_cuotas_pagadas, prestamo_estado_id, prestamo_fecha_solicitud, prestamo_fecha_aprobacion) VALUES
(1, 3, 4, 10000.00, 5, 1, 2, CURDATE() - INTERVAL 30 DAY, CURDATE() - INTERVAL 25 DAY),
(2, 2, 2, 20000.00, 10, 0, 1, CURDATE() - INTERVAL 5 DAY, NULL),
(3, 4, 5, 15000.00, 6, 0, 3, CURDATE() - INTERVAL 10 DAY, NULL);

-- Cuotas
INSERT INTO Cuota (cuota_id, prestamo_id, cuota_nro_cuota, cuota_monto, fecha_vencimiento, cuota_fecha_pago, estado_cuota_id, cuenta_fecha_solicitud, cuenta_fecha_aprobacion) VALUES
(1, 1, 1, 2000.00, CURDATE() - INTERVAL 20 DAY, CURDATE() - INTERVAL 18 DAY, 2, CURDATE() - INTERVAL 30 DAY, CURDATE() - INTERVAL 25 DAY),
(2, 1, 2, 2000.00, CURDATE() - INTERVAL 10 DAY, NULL, 1, CURDATE() - INTERVAL 30 DAY, CURDATE() - INTERVAL 25 DAY),
(3, 1, 3, 2000.00, CURDATE() + INTERVAL 10 DAY, NULL, 1, CURDATE() - INTERVAL 30 DAY, CURDATE() - INTERVAL 25 DAY);
*/

