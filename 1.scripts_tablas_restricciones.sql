# Creación tabla usuarios
  
CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    dni VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
    fechaNacimiento DATE NOT NULL,
);


# Creación tabla clientes

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);



# Creación tabla empleados

CREATE TABLE Empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    rol ENUM('dependiente', 'cuidador', 'veterinario', 'responsable') NOT NULL
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla ventas

CREATE TABLE Ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaHora DATETIME NOT NULL,
    total DOUBLE NOT NULL,
    metodoPago ENUM('efectivo', 'tarjeta') NOT NULL
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla línea ventas

CREATE TABLE LineaVenta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT NOT NULL,
    precio DOUBLE NOT NULL,
    ventaId INT NOT NULL,
    FOREIGN KEY (ventaId) REFERENCES Ventas(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla productos

CREATE TABLE Productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio DOUBLE NOT NULL,
    stock INT NOT NULL,
    lineaId INT NOT NULL,
    FOREIGN KEY (lineaId) REFERENCES LineaVenta(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla categoria producto

CREATE TABLE CategoriaProducto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    productoId INT NOT NULL,
    FOREIGN KEY (productoId) REFERENCES Productos(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla solicitud adopción

CREATE TABLE SolicitudAdopcion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    estado ENUM('pendiente', 'aprobada', 'rechazada') NOT NULL DEFAULT 'pendiente',
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla adopción

CREATE TABLE Adopcion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaAdopcion DATE NOT NULL,
    numero VARCHAR(255) NOT NULL,
    solicitudId INT NOT NULL,
    FOREIGN KEY (solicitudId) REFERENCES SolicitudAdopcion(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla seguimiento adopción

CREATE TABLE SeguimientoAdopcion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    diasDesdeAdopcion INT NOT NULL,
    fechaPrevista DATE NOT NULL,
    fechaRealizacion DATE NOT NULL,
    resultado VARCHAR(255) NOT NULL,
    observaciones VARCHAR(255),
    adopcionId INT NOT NULL,
    FOREIGN KEY (adopcionId) REFERENCES Adopcion(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);






