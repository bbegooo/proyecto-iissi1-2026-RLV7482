# Creación tabla usuarios
  
CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    dni VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);


# Creación tabla clientes

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    clienteId INT NOT NULL,
    fechaNacimiento DATE NOT NULL,
    FOREIGN KEY (clienteId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);



# Creación tabla empleados

CREATE TABLE Empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    empleadoId INT NOT NULL,
    rol ENUM('dependiente', 'cuidador', 'veterinario', 'responsable') NOT NULL
    FOREIGN KEY (empleadoId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

# Creación tabla ventas

CREATE TABLE Ventas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaHora DATETIME NOT NULL,
    total DOUBLE NOT NULL,
    rol ENUM('efectivo', 'tarjeta') NOT NULL
    ventaId INT NOT NULL,
    FOREIGN KEY (ventaId) REFERENCES Usuarios(id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


