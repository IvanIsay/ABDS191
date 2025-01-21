

-- Explorar las propiedades de las BD
EXEC sp_helpdb

EXEC sp_helpdb 'ComicsStore'


-- Explorar las propiedades de un objeto de la BD
EXEC sp_help 'Clientes'

--llaves primarias de una tablas
EXEC sp_helpindex 'Clientes'

-- Informacion de los usuarios y procesos actualez
EXEC sp_who

-- rendimiento del servidor
EXEC sp_monitor

--Espacio usado por la BD
EXEC sp_spaceused

--Puerto de escucha del SQL SEVER
EXEC sp_readerrorlog 0,1


--- Nuestros Procedimientos 

--Procedimiento para consultar el HIstorial de un usuario en Especifico

CREATE PROCEDURE sp_ObtenerHistorial
  @usuarioId INT
AS
BEGIN

select h.HistorialID, p.Titulo, h.FechaVisualizacion
from HistorialVisualizacion h
JOIN Peliculas p ON h.PeliculaID = p.PeliculaID
WHERE  h.UsuarioID= @usuarioId
ORDER BY h.FechaVisualizacion DESC

END;

--Ejecucion 
EXEC sp_ObtenerHistorial 5




--  SP para Insertar Peliculas
SELECT * from Peliculas

CREATE PROCEDURE sp_insertarPeliculas
@titulo NVARCHAR(100),
@genero NVARCHAR(50),+---
@fechaEstreno DATE
AS
BEGIN
	INSERT INTO Peliculas(Titulo,Genero,FechaEstreno) VALUES(@titulo, @genero, @fechaEstreno)
END;

EXEC  sp_insertarPeliculas @titulo = 'Intensamente', @genero = 'Infantil', @fechaEstreno = '2015-06-13'