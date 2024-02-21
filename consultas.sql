-- concatenar valores en columnas

SELECT CONCAT(nombre, ' trabaja como ', puesto) AS nombre_consulta
FROM empleados
WHERE departamento_id = 101;

-- || <-- esto se utiliza para oracle y el operador concat es utilizado en mysql

-- utilizar logica condicional en una declaración select

/* Problema
Deseas realizar operaciones IF-ELSE en los valores de tu declaración SELECT. Por ejemplo, 
te gustaría producir un conjunto de resultados de manera que, si a un empleado se le paga 
$2,000 o menos, se devuelva un mensaje de "PAGADO INFERIOR"; si a un empleado se le paga $4,000
 o más, se devuelva un mensaje de "PAGADO EXCESIVAMENTE"; y si ganan algo intermedio, 
 entonces se devuelve "OK". El conjunto de resultados debería lucir así:*/
 
 select nombre, salario,
case when salario <= 60000 then 'pago inferior'
when salario >= 70000 then 'pago excesivo'
else 'ok'
end as estatus
from empleados 

-- limitar la cantidad de filas devueltas

select *
from empleados limit 2

-- Devolver n Registros Aleatorios de una Tabla

select nombre, puesto
from empleados
order by rand() limit 4

/* ORDER BY RAND(): Ordena las filas resultantes de la consulta de manera aleatoria. 
La función RAND() se utiliza en la cláusula ORDER BY para generar un número aleatorio 
para cada fila y luego ordenar las filas basándose en esos valores aleatorios. 
Esto significa que las filas se ordenarán de forma aleatoria cada vez que se ejecute la consulta. */

-- encontrar valores nulos

select *
from empleados 
where salario is null

select * from empleados
-- Transformar Nulos en Valores Reales

select case
when comision is not null then comision
else 0
end
from empleados

-- busqueda de patrones

select nombre, puesto
from empleados
where departamento_id in (104,102,103)
and (nombre like '%z%' or puesto like '%An%')
