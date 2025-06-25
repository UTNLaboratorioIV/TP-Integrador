-- SP Y TRIGGERS PARA BANCox

-- SP: Dar de baja lógica Usuario
DELIMITER //
CREATE PROCEDURE sp_baja_usuario(IN p_usuario_id INT)
BEGIN
    START TRANSACTION;
		UPDATE Usuario SET usuario_estado = FALSE WHERE usuario_id = p_usuario_id;
    COMMIT;
END //
DELIMITER ;

-- SP: Dar de baja lógica Cliente
DELIMITER //
CREATE PROCEDURE sp_baja_cliente(IN p_cliente_id INT)
BEGIN
    START TRANSACTION;
		UPDATE Cliente SET cliente_estado = FALSE WHERE cliente_id = p_cliente_id;
    COMMIT;
END //
DELIMITER ;

-- SP: Dar de baja lógica Cuenta
DELIMITER //
CREATE PROCEDURE sp_baja_cuenta(IN p_cuenta_id INT)
BEGIN
    START TRANSACTION;
		UPDATE Cuenta SET cuenta_estado = FALSE WHERE cuenta_id = p_cuenta_id;
    COMMIT;
END //
DELIMITER ;

-- SP: Obtener todos los usuarios (JOIN con tipo)
DELIMITER //
CREATE PROCEDURE sp_obtener_usuarios()
BEGIN
    SELECT u.usuario_id AS Id,
		u.usuario_nombre AS Nombre,
		u.usuario_estado AS Estado,
		ut.usuario_tipo_id_descripcion AS Tipo
    FROM Usuario u
		JOIN Usuario_Tipo ut ON u.usuario_tipo_id = ut.usuario_tipo_id;
END //
DELIMITER ;

-- SP: Buscar usuarios por nombre con LIKE
DELIMITER //
CREATE PROCEDURE sp_buscar_usuario_nombre(IN p_nombre VARCHAR(50))
BEGIN
    SELECT u.usuario_id AS Id,
		u.usuario_nombre AS Nombre,
        u.usuario_estado AS Estado,
        ut.usuario_tipo_id_descripcion AS Tipo
    FROM Usuario u
    J	OIN Usuario_Tipo ut ON u.usuario_tipo_id = ut.usuario_tipo_id
    WHERE u.usuario_nombre LIKE '%' || p_nombre || '%';
END //
DELIMITER ;

-- SP: Obtener todos los clientes (JOIN con provincia)
DELIMITER //
CREATE PROCEDURE sp_obtener_clientes()
BEGIN
    SELECT c.cliente_id AS Id,
		c.cliente_nombre AS Nombre,
        c.cliente_apellido AS Apellido,
        c.cliente_email AS Email,
		c.cliente_telefono AS Telefono,
        c.localidad AS Localidad,
        p.provincia_nombre AS Provincia
    FROM Cliente c
		LEFT JOIN Provincia p ON c.provincia_id = p.provincia_id
    WHERE c.cliente_estado = TRUE;
END //
DELIMITER ;

-- SP: Buscar clientes por apellido con LIKE
DELIMITER //
CREATE PROCEDURE sp_buscar_cliente_apellido(IN p_apellido VARCHAR(50))
BEGIN
    SELECT c.cliente_id AS Id,
		c.cliente_nombre AS Nombre,
        c.cliente_apellido AS Apellido,
        c.cliente_email AS Email,
		c.cliente_telefono AS Telefono,
		c.localidad AS Localidad,
		p.provincia_nombre AS Provincia
    FROM Cliente c
		LEFT JOIN Provincia p ON c.provincia_id = p.provincia_id
    WHERE c.cliente_apellido LIKE '%' || p_apellido || '%' AND c.cliente_estado = TRUE;
END //
DELIMITER ;

-- SP: Obtener todas las cuentas con tipo y cliente
DELIMITER //
CREATE PROCEDURE sp_obtener_cuentas()
BEGIN
    SELECT c.cuenta_id AS Id,
		c.cuenta_cbu AS CBU,
		c.cuenta_saldo AS Saldo,
		c.cuenta_estado AS Estado,
		ct.cuenta_tipo_descripcion AS Tipo,
		cl.cliente_nombre AS Nombre,
		cl.cliente_apellido AS Apellido
    FROM Cuenta c
		JOIN Cuenta_Tipo ct ON c.cuenta_tipo_id = ct.cuenta_tipo_id
		JOIN Cliente cl ON c.cliente_id = cl.cliente_id
    WHERE c.cuenta_estado = TRUE;
END //
DELIMITER ;

-- SP: Buscar cuenta por CBU con LIKE
DELIMITER //
CREATE PROCEDURE sp_buscar_cuenta_cbu(IN p_cbu VARCHAR(50))
BEGIN
    SELECT c.cuenta_id AS Id,
		c.cuenta_cbu AS CBU,
        c.cuenta_saldo AS Saldo,
        c.cuenta_estado AS Estado,
		ct.cuenta_tipo_descripcion AS Tipo,
		cl.cliente_nombre AS Nombre, 
        cl.cliente_apellido AS Apellido
    FROM Cuenta c
		JOIN Cuenta_Tipo ct ON c.cuenta_tipo_id = ct.cuenta_tipo_id
		JOIN Cliente cl ON c.cliente_id = cl.cliente_id
    WHERE c.cuenta_cbu LIKE '%' || p_cbu || '%' AND c.cuenta_estado = TRUE;
END //
DELIMITER ;

-- TRIGGER: Baja lógica de cliente si usuario se da de baja
DELIMITER //
CREATE TRIGGER tr_baja_usuario
AFTER UPDATE ON Usuario
FOR EACH ROW
BEGIN
    IF OLD.usuario_estado = TRUE AND NEW.usuario_estado = FALSE THEN
        UPDATE Cliente SET cliente_estado = FALSE 
			WHERE usuario_id = NEW.usuario_id;
        UPDATE Cuenta SET cuenta_estado = FALSE 
			WHERE cliente_id IN (SELECT cliente_id FROM Cliente WHERE usuario_id = NEW.usuario_id);
    END IF;
END //
DELIMITER ;

-- TRIGGER: Baja lógica de cuentas si cliente se da de baja
DELIMITER //
CREATE TRIGGER tr_baja_cliente
AFTER UPDATE ON Cliente
FOR EACH ROW
BEGIN
    IF OLD.cliente_estado = TRUE AND NEW.cliente_estado = FALSE THEN
        UPDATE Cuenta SET cuenta_estado = FALSE WHERE cliente_id = NEW.cliente_id;
    END IF;
END //
DELIMITER ;