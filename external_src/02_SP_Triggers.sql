-- SP Y TRGSIGGERS

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

-- SP: Obtener todos los usuarios
DELIMITER //
CREATE PROCEDURE sp_obtener_usuarios()
BEGIN
    SELECT u.usuario_id, u.usuario_nombre, u.usuario_estado, ut.usuario_tipo_id_descripcion
    FROM Usuario u
    JOIN Usuario_Tipo ut ON u.usuario_tipo_id = ut.usuario_tipo_id;
END //
DELIMITER ;

-- SP: Buscar usuarios por nombre con LIKE
DELIMITER //
CREATE PROCEDURE sp_buscar_usuario_nombre(IN p_nombre VARCHAR(50))
BEGIN
    SELECT u.usuario_id, u.usuario_nombre, u.usuario_estado, ut.usuario_tipo_id_descripcion
    FROM Usuario u
    JOIN Usuario_Tipo ut ON u.usuario_tipo_id = ut.usuario_tipo_id
    WHERE u.usuario_nombre LIKE CONCAT('%', p_nombre, '%');
END //
DELIMITER ;

-- SP: Buscar clientes por apellido con LIKE
DELIMITER //
CREATE PROCEDURE sp_buscar_cliente_apellido(IN p_apellido VARCHAR(50))
BEGIN
    SELECT c.cliente_id, c.cliente_nombre, c.cliente_apellido, c.cliente_email, c.cliente_telefono, c.localidad, p.provincia_nombre
    FROM Cliente c
    LEFT JOIN Provincia p ON c.provincia_id = p.provincia_id
    WHERE c.cliente_apellido LIKE CONCAT('%', p_apellido, '%') AND c.cliente_estado = TRUE;
END //
DELIMITER ;

-- SP: Obtener todos los clientes
DELIMITER //
CREATE PROCEDURE sp_obtener_clientes()
BEGIN
    SELECT c.cliente_id, c.cliente_nombre, c.cliente_apellido, c.cliente_email, c.cliente_telefono, c.localidad, p.provincia_nombre
    FROM Cliente c
    LEFT JOIN Provincia p ON c.provincia_id = p.provincia_id
    WHERE c.cliente_estado = TRUE;
END //
DELIMITER ;

-- SP: Obtener todas las cuentas con tipo y cliente
DELIMITER //
CREATE PROCEDURE sp_obtener_cuentas()
BEGIN
    SELECT c.cuenta_id, c.cuenta_cbu, c.cuenta_saldo, c.cuenta_estado, ct.cuenta_tipo_descripcion,
           cl.cliente_nombre, cl.cliente_apellido
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
    SELECT c.cuenta_id, c.cuenta_cbu, c.cuenta_saldo, c.cuenta_estado, ct.cuenta_tipo_descripcion,
           cl.cliente_nombre, cl.cliente_apellido
    FROM Cuenta c
    JOIN Cuenta_Tipo ct ON c.cuenta_tipo_id = ct.cuenta_tipo_id
    JOIN Cliente cl ON c.cliente_id = cl.cliente_id
    WHERE c.cuenta_cbu LIKE CONCAT('%', p_cbu, '%') AND c.cuenta_estado = TRUE;
END //
DELIMITER ;

-- TRIGGER: Baja lógica de cliente si usuario se da de baja
DELIMITER //
CREATE TRIGGER tr_baja_usuario
AFTER UPDATE ON Usuario
FOR EACH ROW
BEGIN
    IF OLD.usuario_estado = TRUE AND NEW.usuario_estado = FALSE THEN
        UPDATE Cliente SET cliente_estado = FALSE WHERE usuario_id = NEW.usuario_id;
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

-- TRIGGER: Saldo inicial de cuenta a $10.000
DELIMITER //
CREATE TRIGGER tr_saldo_inicial_cuenta
BEFORE INSERT ON Cuenta
FOR EACH ROW
BEGIN
    IF NEW.cuenta_saldo IS NULL OR NEW.cuenta_saldo = 0 THEN
        SET NEW.cuenta_saldo = 10000;
    END IF;
END //
DELIMITER ;