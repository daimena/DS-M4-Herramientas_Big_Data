CREATE TABLE IF NOT EXISTS CanalDeVenta (
 codigo int,
 descripcion string)
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY ',';

LOAD DATA INPATH '/data/canaldeventa/CanalDeVenta.csv' INTO TABLE CanalDeVenta;

CREATE TABLE IF NOT EXISTS Calendario (
    IdFecha int,
    fecha DATE,
    anio int,
    mes int,
    dia int,
    trimestre int,
    semana int,
    dia_nombre string,
    mes_nombre string)
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ',';

LOAD DATA INPATH '/data/calendario/Calendario.csv' INTO TABLE Calendario;

CREATE TABLE IF NOT EXISTS Cliente(
    ID int,
    Provincia string,
    Nombre_y_Apellido string,
    Domicilio string,
    Telefono string,
    Edad int,
    Localidad string,
    X string,
    Y string,
    col10 string)
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ';';

LOAD DATA INPATH '/data/cliente/Cliente.csv' INTO TABLE Cliente;

CREATE TABLE IF NOT EXISTS Gasto(
    IdGasto int,
    IdSucursal int,
    IdTipoGasto int,
    Fecha DATE,
    Monto decimal)
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ',';

LOAD DATA INPATH '/data/gasto/Gasto.csv' INTO TABLE Gasto;

CREATE TABLE IF NOT EXISTS Producto(
    ID_PRODUCTO int,
    Concepto string,
    Tipo string,
    Precio decimal)
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ';';

LOAD DATA INPATH '/data/producto/Producto.csv' INTO TABLE Producto;

CREATE TABLE ProductoParquet STORED AS PARQUET AS SELECT * FROM Producto;