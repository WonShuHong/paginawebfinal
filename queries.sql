Drop database if exists BaseCoope;
Create database BaseCoope;
use BaseCoope;

CREATE TABLE Socio (
    NIF char (9) PRIMARY KEY, 
    Nombre VARCHAR(50) not null,
    Apellido1 VARCHAR(50) not null,
    Apellido2 VARCHAR(50),
    Dirección VARCHAR(20) not null,
    Piso VARCHAR(25) not null,
    Código_Postal Char(5) not null,
    Municipio VARCHAR(55) not null,
    Provincia VARCHAR(55) not null,
    Telefono VARCHAR(16),
    Correo_Electrónico VARCHAR(55)
);

INSERT INTO Socio VALUES('1111111A','Carlos','Manzano','Hong','Maestro_Bartolome',4,'23003','Albacete','Comunidad Valenciana',958374854,'C*******@gmail.com');

CREATE TABLE Entrega (
    N_Entrega INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Hora_Entrega DATETIME not null,
    Número_Socio VARCHAR(25) not null,
    Cantidad_Aceituna VARCHAR(65) not null,
    Tipo_Aceite VARCHAR(55) not null,
    Parcela int(55) not null,
    Recinto int(55) not null,

                FOREIGN KEY (Número_Socio) 
                    REFERENCES Socio(NIF) 
                    ON DELETE CASCADE
);

INSERT INTO Entrega VALUES(null,2024-03-12 19:30,234234234,'45kg','Arbol',4,4);

CREATE TABLE Ventas (
    N_Factura INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Hora_Venta DATETIME not null,
    Número_Socio VARCHAR(25) not null,
                FOREIGN KEY (Número_Socio) 
                    REFERENCES Socio(NIF) 
);

INSERT INTO ventas VALUES(NULL,'58L');
CREATE TABLE Producto (
    ID_DE_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Precio litros Float(),
);
CREATE TABLE VENTA_PRODUCTO(
    N_Factura INT,
    ID_DE_Producto INT,
    cantidad INT,
    FOREIGN KEY (ID_DE_Producto),
    REFERENCES Producto (ID_DE_Producto),
    CONSTRAINT VENTA_PRODUCTO PRIMARY KEY(N_Factura,ID_DE_Producto),
    CONSTRAINT vent_Fact_fk FOREIGN KEY (N_Factura)
            REFERENCES VENTA (N_Factura) ON UPDATE CASCADE ON DELETE NO ACTION
    CONSTRAINT vent_Fact_fk FOREIGN KEY (ID_DE_Producto)
            REFERENCES VENTA (ID_DE_Producto) ON UPDATE CASCADE ON DELETE NO ACTION
);
INSERT INTO ventas VALUES(NULL,null,46);