-- R.F.04 (Consultar el historial y gasto de compras de un cliente)

DELIMITER //
CREATE OR REPLACE FUNCTION fTotalComprasCliente(pUsuarioId INT)
RETURNS DOUBLE
READS SQL DATA
BEGIN
  DECLARE vTotal Double;
  SELECT COALESCE(SUM(total), 0)
  INTO vTotal
  FROM Ventas
  WHERE usuarioId = pUsuarioId;
  RETURN vTotal;
END//
DELIMITER ;

-- Para llamar la funcion de R.F.04
-- SELECT u.nombre, u.apellidos, fTotalComprasCliente(u.id) AS totalGastado
-- FROM Usuario u
-- JOIN Clientes c ON c.usuarioId = u.id;

-- R.F.08(Adopciones realizadas por un cliente)

DELIMITER //
CREATE OR REPLACE FUNCTION fAdoptantesClientes(pUsuarioId INT)
RETURNS INT
READS SQL DATA
BEGIN 
  DECLARE vAdopciones INT;
  SELECT COUNT(*)
  INTO vAdopciones
  FROM Adopcion a
  JOIN SolicitudAdopcion s On s.id = a.solicitudId
  WHERE s.usuarioId = pUsuarioId;
  RETURN vAdopciones;
END //
DELIMITER ;

-- Para llamar a la funcion R.F.08 
-- SELECT id, nombre, fAdopcionCliente(id) AS numAdopciones
-- FROM Usuarios;

-- R.F.12 (reservas realizadas por un cliente)

DELIMITER //
CREATE OR REPLACE FUNCTION fNumReservasCliente(pCliente(pClienteId INT)
RETURN INT
READS SQL DATA
BEGIN
  DECLARE vReservas INT;
  SELECT COUNT(*)
  INTO vReservas
  FROM Reservas
  WHERE clienteId = pClienteId
    AND estadoReserva <> 'cancelada';
  RETURN vReservas;
END//
DELIMITER ;

-- Para llamar a la funcion de R.F.12
-- SELECT id, fNumReservasCliente(id) AS totalReservas
-- FROM Clientes;

-- R.F.15 (incidencias de estancia/reserva)

DELIMITER //
CREATE OR REPLACE FUNCTION fNumIncidenciasReserva(pReservaId INT)
RETURNS INT
READS SQL DATA
BEGIN
  DECLATE vTotal INT;
  SELECT COUNT(*)
  INTO vTotal
  FROM Incidencias
  WHERE reservaId = pReservaId;
  RETURN vTotal;
END//
DELIMITER ;

-- Para llamar a la funcion R.F.15
-- SELECT id, fNumIncidenciasReservada(id) AS totalIncidencias
--FROM Reservas;

-- R.F.16 (Visitas/ revisiones de un animal)

DELIMITER //
CREATE OR REPLACE FUNCTION fVistasVeterinariasAnimal(pAnimalId INT)
RETURNS INT
READS SQL DATA
BEGIN
  DECLARE vVisitas INT;
  SELECT COUNT(*)
  INTO vVisitas
  FROM RevisionesVeterinarias
  WHERE animalId = pAnimalId
  RETURN vVisitas;
END//
DELIMITER;

-- Para llamar a la funcion de R.F.16 
-- SELECT id, nombre, fVisitasVeterinariasAnimal AS numVisitas
-- FROM Animales;


-- R.F.17 (Número de mascotas de casa cliente)

DELIMITER //
CREATE OR REPLACE FUNCTION fNumMascotasCliente(pClienteId INT)
RETURNS INT
READS SQL DATA
BEGIN
  DECLARE vNum INT;
  SELECT COUNT(*)
  INTO vNum
  FROM Animales
  WHERE clienteId = pClienteId;
  RETURN vNum;
END //
DELIMITER ;

-- Para llamar a la funcion de R.F.17
-- SELECT id, clienteId, nombre, fNumMascotasCliente(clienteId) AS numMascotas
-- FROM Animales
-- WHERE clienteId IS NOT NULL;
