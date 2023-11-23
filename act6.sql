--Borrar todos los clientes que no tengan facturas (invoices)

DELETE FROM customers
WHERE CustomerId NOT IN (SELECT DISTINCT CustomerId FROM invoices);