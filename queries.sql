CREATE TABLE Socio (
    NIF char (9) PRIMARY KEY, 
    Nombre VARCHAR(55) not null,
    Apellido1 VARCHAR(55) not null,
    Apellido2 VARCHAR(55),
    Dirección Text(55) not null,
    Piso VARCHAR(25) not null,
    Código_Postal VARCHAR(50) not null,
    Municipio Text(55) not null,
    Provincia Text(55) not null,
    Telefono VARCHAR(30),
    Correo_Electrónico VARCHAR(55)
);

CREATE TABLE Entrega (
    N_Entrega INT AUTO_INCREMENT PRIMARY KEY,
    Municipio Text(55) not null,
    Fecha_Hora_Entrega DATETIME not null,
    Número_Socio VARCHAR(25) not null,
    Cantidad_Aceituna DECIMAL(64,9) not null,
    Tipo_Aceite VARCHAR(55) not null,
    Parcela VARCHAR(55) not null,
    Recinto VARCHAR(55) not null,
                FOREIGN KEY (Número_Socio) 
                    REFERENCES Socio(NIF) 
                    ON DELETE CASCADE
);

CREATE TABLE Ventas (
    N_Factura INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Hora_Venta DATETIME not null,
    Número_Socio VARCHAR(25) not null,
                FOREIGN KEY (Número_Socio) 
                    REFERENCES Socio(NIF) 
                    ON DELETE CASCADE
);