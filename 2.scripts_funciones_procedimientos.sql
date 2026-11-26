
--- PROCEDIMIENTOS

-- Insertar un nuevo Usuario
DELIMITER //

CREATE OR REPLACE PROCEDURE pInsertarUsuario (
    IN i INT, 
    IN n VARCHAR(255), 
    IN a VARCHAR(255), 
    IN d VARCHAR(255), 
    IN t VARCHAR(255), 
    IN e VARCHAR(255)
)
BEGIN
INSERT INTO usuarios (id, nombre, apellidos, dni, telefono , email) VALUES (i, n, a, d, t, e);
END//
DELIMITER ;

--- CALL pInsertarUsuario(NULL, 'Mar', 'Lopez Requena', '28389123D', '+34829348', 'marestoyharta@gmail.com');


-- Insertar un nuevo Cliente
DELIMITER //

CREATE OR REPLACE PROCEDURE pInsertarCliente (
    IN i INT, 
    IN f DATE,
    IN u INT
)
BEGIN
INSERT INTO clientes (id, fechaNacimiento, usuarioId) VALUES (i, f, u);
END//


--- TRIGGERS

DELIMITER //
-- Comprueba que la fecha de nacimiento del cliente no puede ser null
CREATE OR REPLACE TRIGGER
tFechaNacCLienteNotNull
BEFORE UPDATE ON clientes FOR EACH ROW
BEGIN
IF (new.fechaNacimiento IS NULL) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =
'La fecha de nacimiento no puede estar vacía';
END IF;
END //
DELIMITER ;
DELIMITER ;

--- CALL pInsertarCliente(NULL, '2026-11-12', 1);
