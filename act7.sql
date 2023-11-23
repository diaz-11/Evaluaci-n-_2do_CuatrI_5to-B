--Agregar a todos los empleados como clientes del sistema.
  --Poner todos los datos y poner a sus jefes como como agente de soporte (SupportRepId)


INSERT INTO customers (FirstName, LastName, Email, SupportRepId)
SELECT FirstName, LastName, Email, reportsTo AS SupportRepId
FROM employees;

UPDATE customers
SET SupportRepId = (
    SELECT reportsTo
    FROM employees
    WHERE employees.EmployeeId = customers.SupportRepId
);
