-- 1. USUARIOS, EMPLEADOS Y CLIENTES

INSERT INTO Usuarios (nombre, apellidos, dni, telefono, email) VALUES
('Cayetano', 'Martínez Ruiz', '12345678A', '600111222', 'cayetano.martinez@refugio.es'),
('Carlos', 'Gómez Rodríguez', '23456789B', '600222333', 'carlos.gomez@refugio.es'),
('Elena', 'Sánchez López', '34567890C', '600333444', 'elena.sanchez@refugio.es'),
('Javier', 'López Díaz', '45678901D', '600444555', 'javier.torres@correo.es'),
('Sofía', 'Navarro Gil', '56789012E', '600555666', 'sofia.navarro@correo.es'),
('Begoña', 'Domínguez Requena', '37829385M', '699633554', 'mdolores.mm@correo.es'),
('Dolores', 'Romero Castro', '67890123F', '600666777', 'lola.romero@correo.es');

-- Empleados (usuarios 1 a 3)
INSERT INTO Empleados (usuarioId, rol) VALUES
(1, 'responsable'),
(2, 'veterinario'),
(3, 'cuidador');

-- Clientes (usuarios 4 a 7)
INSERT INTO Clientes (fechaNacimiento, usuarioId) VALUES
('1990-05-14', 4),
('1985-11-23', 5),
('2007-11-03', 6),
('1998-03-08', 7);

-- 2. TIENDA

INSERT INTO CategoriaProductos (nombre) VALUES
('Alimentación'),
('Accesorios'),
('Higiene');

INSERT INTO Productos (nombre, descripcion, precio, stock, categoriaId) VALUES
('Pienso Seco Adulto 10kg', 'Alimento completo para perros adultos', 34.50, 25, 1),
('Arena Aglomerante 8L', 'Arena de bentonita sin perfume para gatos', 9.90, 40, 3),
('Arnés Acolchado Ajustable', 'Arnés ergonómico con anilla metálica', 18.00, 15, 2),
('Snack Dental Multivitamínico', 'Premio diario para higiene bucal', 6.50, 50, 1),
('Comedero Antivoracidad Acero', 'Comedero de acero inoxidable con relieve para ralentizar la ingesta', 14.50, 20, 2),
('Champú Calmante Avena y Aloe', 'Champú suave para pieles sensibles o con tendencia a irritación', 11.20, 30, 3),
('Pienso Gato Esterilizado Salmón', 'Fórmula baja en grasa con control de minerales urinarios', 29.90, 18, 1),
('Transportín Rígido Homologado', 'Transportín ventilado con cierre de seguridad para viajes y veterinario', 39.00, 10, 2);

INSERT INTO Ventas (fechaHora, total, metodoPago, usuarioId) VALUES
('2026-10-10 11:30:00', 52.50, 'tarjeta', 4),
('2026-10-12 18:15:00', 16.40, 'efectivo', 5),
('2026-10-15 10:20:00', 44.40, 'tarjeta', 6),
('2026-10-18 17:05:00', 50.20, 'tarjeta', 4),
('2026-10-22 12:40:00', 24.20, 'efectivo', 5);

INSERT INTO LineaVenta (cantidad, precio, ventaId, productoId) VALUES
(1, 34.50, 1, 1),
(1, 18.00, 1, 3),
(1, 9.90, 2, 2),
(1, 6.50, 2, 4),
(1, 14.50, 3, 5),
(1, 29.90, 3, 7),
(1, 39.00, 4, 8),
(1, 11.20, 4, 6),
(2, 6.50, 5, 4),
(1, 11.20, 5, 6);

-- 3. ANIMALES Y ADOPCIONES

INSERT INTO Especies (nombre) VALUES
('Perro'),
('Gato'),
('Conejo'), 
('Huron'),
('Cobaya');

-- Animales:
-- 1 y 2: en refugio | 3: adoptado | 4: de cliente (para hotel/revisiones)
INSERT INTO Animales (
    nombre, raza, fechaNacimiento, tamano, sexo,
    desparasitado, esterilizado, fechaIngresoRefugio,
    estadoAnimal, especieId, clienteId
) VALUES
('Toby', 'Mestizo', '2022-04-10', 'mediano', 'macho', TRUE, TRUE, '2025-02-01', 'en_refugio', 1, NULL),
('Misu', 'Europeo común', '2024-01-15', 'pequeño', 'hembra', TRUE, FALSE, '2025-06-12', 'en_refugio', 2, NULL),
('Nala', 'Golden Retriever', '2021-09-20', 'grande', 'hembra', TRUE, TRUE, '2024-05-10', 'adoptado', 1, 1),
('Bola', 'Cabeza de león', '2023-07-02', 'pequeño', 'macho', TRUE, TRUE, NULL, 'de_cliente', 3, 2),
('Pipa', 'Sable', '2024-03-19', 'pequeño', 'hembra', TRUE, TRUE, '2025-07-04', 'en_refugio', 4, NULL),
('Kiko', 'Albino', '2023-10-11', 'pequeño', 'macho', TRUE, FALSE, NULL, 'de_cliente', 4, 3),
('Chispa', 'Pelo largo / Sheltie', '2025-01-28', 'pequeño', 'hembra', TRUE, FALSE, '2025-09-12', 'en_refugio', 5, NULL);

INSERT INTO SolicitudAdopcion (fecha, estado, animalId, usuarioId) VALUES
('2025-03-01', 'aprobada', 3, 4),
('2026-09-15', 'pendiente', 1, 5),
('2026-09-20', 'rechazada', 2, 6);

INSERT INTO Adopcion (fechaAdopcion, numero, solicitudId) VALUES
('2025-03-10', 'ADP-2025-001', 1);

INSERT INTO SeguimientoAdopcion (
    diasDesdeAdopcion, fechaPrevista, fechaRealizacion,
    resultado, observaciones, adopcionId, empleadoId
) VALUES
(30, '2025-04-09', '2025-04-09', 'Favorable', 'Adaptación excelente al hogar y al paseo.', 1, 3),
(90, '2025-06-08', NULL, 'Pendiente', 'Programada visita telefónica de control.', 1, 1);


-- 4. SANIDAD

INSERT INTO Vacunas (nombre) VALUES
('Rabia'),
('Polivalente Canina'),
('Trivalente Felina'),
('Mixomatosis');

INSERT INTO VacunaObligatoriaEspecie (vacunaId, especieId) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3);

INSERT INTO Vacunaciones (
    fechaAdministracion, fechaCaducidad,
    animalId, vacunaId, empleadoId
) VALUES
('2026-01-15', '2027-01-15', 1, 1, 2),
('2026-02-01', '2027-02-01', 1, 2, 2),
('2026-06-20', '2027-06-20', 2, 3, 2),
('2026-05-05', '2026-11-05', 4, 4, 2);

INSERT INTO RevisionesVeterinarias (
    fecha, resultadoRevision, observaciones, animalId, empleadoId
) VALUES
('2026-03-10', 'favorable', 'Peso óptimo y mucosas sanas.', 1, 2),
('2026-07-01', 'desfavorable', 'Ligera otitis externa; se inicia tratamiento.', 2, 2),
('2026-08-15', 'favorable', 'Revisión anual de control sin incidencias.', 3, 2);


-- 5. HOTEL

INSERT INTO TipoHabitacion (nombre, tarifaPorNoche) VALUES
('Suite Canina Grande', 28.00),
('Habitación Felina Tranquila', 20.00),
('Jaula/Recinto Pequeños Mamíferos', 14.00);

INSERT INTO TipoHabitacionEspecie (tipoHabitacionId, especieId) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO TipoHabitacionTamano (tipoHabitacionId, tamano) VALUES
(1, 'mediano'),
(1, 'grande'),
(2, 'pequeño'),
(3, 'pequeño');

INSERT INTO Habitaciones (numero, tipoHabitacionId) VALUES
('H-101', 1),
('H-102', 1),
('H-201', 2),
('H-301', 3);

INSERT INTO Reservas (
    fechaEntrada, fechaSalida, estadoReserva, precioTotal,
    fechaCancelacion, importeCancelacion, numeroNoches,
    clienteId, animalId, tipoHabitacionId, habitacionId
) VALUES
(
    '2026-11-25', '2026-11-29', 'en_curso', 56.00,
    NULL, 0.00, 4,
    2, 4, 3, 4
),
(
    '2026-12-20', '2026-12-23', 'confirmada', 84.00,
    NULL, 0.00, 3,
    1, 3, 1, 1
),
(
    '2026-08-01', '2026-08-04', 'finalizada', 60.00,
    NULL, 0.00, 3,
    2, 4, 3, 4
);

INSERT INTO ServiciosContratados (concepto, fecha, precio, reservaId) VALUES
('Peluquería y cepillado', '2026-11-26', 15.00, 1),
('Paseo extra individual', '2026-12-21', 10.00, 2);

INSERT INTO Incidencias (
    fechaHora, tipoIncidencia, descripcion, reservaId, empleadoId
) VALUES
('2026-11-26 09:15:00', 'otro', 'Comió algo menos de heno por la mañana; recuperado por la tarde.', 1, 3);
