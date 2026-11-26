CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) UNIQUE NOT NULL,
    apellidos VARCHAR(255) UNIQUE NOT NULL,
    dni VARCHAR(255) UNIQUE NOT NULL,
	telefono VARCHAR(255) UNIQUE NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL  
);


CREATE TABLE Empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    rol ENUM('dependiente', 'cuidador', 'veterinario', 'responsable') NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
	fechanacimiento DATE NOT NULL, #Cambio con nuevo MC
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


CREATE TABLE Ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaHora DATETIME NOT NULL,
    total DOUBLE NOT NULL, 
    metodoPago ENUM('efectivo', 'tarjeta') NOT NULL,
    usuarioId INT NOT NULL, 
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE LineaVenta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT NOT NULL, 
    precio DOUBLE NOT NULL,
    ventaId INT NOT NULL,
	productoId INT NOT NULL, # Adición con actualizacion de MC
    FOREIGN KEY (ventaId) REFERENCES ventas(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
	# Actualizacion con MC:
	FOREIGN KEY (productoId) REFERENCES Productos(id)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	CHECK (cantidad > 0),
	CHECK (precio >= 0)
);

CREATE TABLE Productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio DOUBLE NOT NULL, 
    stock INT NOT NULL,
    lineaId INT NOT NULL, # Tal vez esto deveria de ser categoriaId en vez de lineaId
    FOREIGN KEY (lineaId) REFERENCES lineaVenta(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
	CHECK (precio >= 0), # Actualización
	CHECK (stock >= 0) # Actualización
);

CREATE TABLE CategoriaProductos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    productoId INT NOT NULL,  
    FOREIGN KEY (productoId) REFERENCES Productos(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE SolicitudAdopcion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    estado ENUM('pendiente', 'aprobada', 'rechazada') NOT NULL DEFAULT 'pendiente',
	animalId INT NOT NULL,
    usuarioId INT NOT NULL, 
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
	FOREIGN KEY (animalId) REFERENCES Animales(id)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE Adopcion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaAdopcion DATE NOT NULL,
    numero VARCHAR(255) NOT NULL,
    solicitudId INT NOT NULL, 
    FOREIGN KEY (solicitudId) REFERENCES solicitudAdopcion(id)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);

CREATE TABLE SeguimientoAdopcion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    diasDesdeAdopcion INT NOT NULL,
    fechaprevista DATE NOT NULL,
    fechaRealizacion DATE NOT NULL,
    resultado VARCHAR(255) NOT NULL,
    observaciones VARCHAR(255),
    adopcionId INT NOT NULL, 
	empleadoId INT NOT NULL,
    FOREIGN KEY (adopcionId) REFERENCES Adopcion(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
	FOREIGN KEY (empleadoId) REFERENCES Empleado(id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE Especies (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Animales (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(255) NOT NULL,
	raza VARCHAR(255) NULL,
	fechaNacimiento DATE NULL,
	tamaño ENUM(‘pequeño’, ‘mediano’, ‘grande’) NOT NULL,
	sexo ENUM(‘macho’, ‘hembra’) NOT NULL,
	desparasitado BOOLEAN NOT NULL DEFAULT FALSE,
	esterilizado BOOLEAN NOT NULL DEFAULT FALSE,
	fechaIngresoRefugio DATE NULL,
	estadoAnimal ENUM(‘en_refugio’, ‘adoptado’, ‘de_cliente’) NOT NULL,
	especieId INT NOT NULL,
	clienteId INT NULL, 
	FOREIGN KEY (especieId) REFERENCES Especies(id)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	FOREIGN KEY (clienteId) REFERENCES Clientes(id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE Vacunas (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE VacunaObligatoriaEspecie (
	vacunaId INT NOT NULL,
	especieId INT NOT NULL,
	PRIMARY KEY (vacunaId, especieId),
	FOREIGN KEY (vacunaId) REFERENCES Vacunas(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (especieId) REFERENCES Especies(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Vacunaciones (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fechaAdministracion DATE NOT NULL,
	fechaCaducidad DATE NOT NULL,
	animalId INT NOT NULL,
	vacunaId INT NOT NULL,
	empleadoId INT NOT NULL,
	FOREIGN KEY (animalId) REFERENCES Animales(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (vacunaId) REFERENCES Vacunas(id)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	FOREIGN KEY (empleadoId) REFERENCES Empleados(id)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	CHECK (fechaCaducidad >= fechaAdministracion)
);

CREATE TABLE RevisionesVeterinarias (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fecha DATE NOT NULL,
	resultadoRevision ENUM(‘favorable’, ‘desfavorable’) NOT NULL,
	observaciones VARCHAR(255) NULL,
	animalId INT NOT NULL,
	empleadoId INT NOT NULL,
	FOREIGN KEY (animalId) REFERENCES Animales(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (empleadoId) REFERENCES Empleados(id)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE TipoHabitacion (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(255) UNIQUE NOT NULL,
	tarifaPorNoche DECIMAL(10, 2) NOT NULL,
	CHECK (tarifaPorNoche >= 0)
);

CREATE TABLE TipoHabitacionEspecie (
	tipoHabitacionId INT NOT NULL,
	especieId INT NOT NULL,
	PRIMARY KEY (tipoHabitacionId, especieId),
	FOREIGN KEY (tipoHabitacionId) REFERENCES TiposHabitacion(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (especieId) REFERENCES Especies(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE TipoHabitacionTamaño (
	tipoHabitacionId INT NOT NULL,
	tamaño ENUM(‘pequeño’, ‘mediano’, ‘grande’) NOT NULL,
	PRIMARY KEY (tipoHabitacionId, tamaño),
	FOREIGN KEY (tiposHabitacionId) REFERENCES TipoHabitacion(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Habitaciones (
	id INT PRIMARY KEY AUTO_INCREMENT,
	numero VARCHAR(255) UNIQUE NOT NULL,
	tipohabitacionId INT NOT NULL,
	FOREIGN KEY (tipoHabitacionId) REFERENCES TipoHabitacion(id)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
);

CREATE TABLE Reservas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaEntrada DATE NOT NULL,
    fechaSalida DATE NOT NULL,
    estadoReserva ENUM('confirmada', 'en_curso', 'finalizada', 'cancelada') NOT NULL DEFAULT 'confirmada',
    precioTotal DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    fechaCancelacion DATETIME NULL,
    importeCancelacion DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    numeroNoches INT NOT NULL,
    clienteId INT NOT NULL,
    animalId INT NOT NULL,
    tipoHabitacionId INT NOT NULL,
    habitacionId INT NULL,
    FOREIGN KEY (clienteId) REFERENCES Clientes(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (animalId) REFERENCES Animales(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (tipoHabitacionId) REFERENCES TiposHabitacion(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (habitacionId) REFERENCES Habitaciones(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CHECK (fechaSalida > fechaEntrada),
    CHECK (numeroNoches > 0),
    CHECK (precioTotal >= 0),
    CHECK (importeCancelacion >= 0)
);

CREATE TABLE ServiciosContratados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    concepto VARCHAR(150) NULL,
    fecha DATE NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    reservaId INT NOT NULL,
    FOREIGN KEY (reservaId) REFERENCES Reservas(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CHECK (precio >= 0)
);

CREATE TABLE Incidencias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaHora DATETIME NOT NULL,
    tipoIncidencia ENUM('enfermedad', 'pelea', 'fuga', 'otro') NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    reservaId INT NOT NULL,
    empleadoId INT NOT NULL,
    FOREIGN KEY (reservaId) REFERENCES Reservas(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (empleadoId) REFERENCES Empleados(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


