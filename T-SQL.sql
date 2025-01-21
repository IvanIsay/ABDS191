
--TSQL

/*

--declarar varible
declare @idCliente int

--inicializar o asignar valor
set @idCliente = 8

--if 
--IF @idCliente = 5
	 --select * from Clientes where id_cliente = @idCliente

 declare @edad int
 set @idCliente = 8

 IF @idCliente = 8
  BEGIN
	 set @edad= 25
	 select * from Clientes where id_cliente = @idCliente
	 print @edad

	 IF EXISTS(select * from Clientes where id_cliente = 10)
		print 'Si existe'

  END

ELSE
  BEGIN
	 print 'Error: '
	 print 'id no autorizado para la consulta'
  END

 */

 -- WHILE
 /*
 declare @contador int = 0

 WHILE @contador <=10
 BEGIN
	print @contador
	set @contador= @contador + 1
 END
 

 --Return & BREAK

  declare @contador int = 0

 WHILE @contador <=10
 BEGIN
	print @contador
	set @contador= @contador + 1
	IF @contador = 3 
		BREAK
    print('hola')
 END
 print('aqui continua el flujo')

 BEGIN TRY
	set @contador = 'Ivan Isay'
 END TRY
 BEGIN CATCH
	print('la variable contador solo acepta enteros ') 
 END CATCH 

 print('soy otra consulta ')
 print('yo tambien')

 */

 --- CASE

 declare @valor int
 declare @resultado char(10)=''
 set @valor= 20

 set @resultado= (CASE WHEN @valor=10 THEN 'ROJO'
					   WHEN @valor= 20 THEN 'MORADO'
					   WHEN @valor= 30 THEN 'NEGRO'
					   ELSE 'GRIS'
					   END)
print @resultado



select * ,(CASE WHEN disponibilidad= 1 THEN 'VERDE'
				WHEN disponibilidad= 0 THEN 'ROJO'
				ELSE 'NEGRO' END) AS INDICADOR
				FROM Inventario