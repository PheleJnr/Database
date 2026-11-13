show DATABASES;
USE cape_codd;
SELECT *
FROM INVENTORY;


SELECT SKU
FROM INVENTORY;

-- 2.17
SELECT SKU, SKU_Description
FROM INVENTORY;

-- 2.18
SELECT SKU_Description, SKU
FROM INVENTORY;

-- 2.19
SELECT WarehouseID
FROM INVENTORY;

-- 2.20
SELECT DISTINCT WarehouseID
FROM INVENTORY;

-- 2.21
SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
FROM INVENTORY;

-- 2.22
SELECT *
FROM INVENTORY;

-- 2.23
SELECT *
FROM INVENTORY
WHERE QuantityOnHand > 0;

-- 2.24
SELECT SKU, SKU_Description
FROM INVENTORY
WHERE QuantityOnHand = 0;

-- 2.25
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 
ORDER BY WarehouseID ASC;

-- 2.26
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 0 
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.27
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.28
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;

-- 2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1 AND QuantityOnHand < 10;

-- 2.30
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand BETWEEN 1 AND 10;

-- 2.31
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome%';

-- 2.32
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '%Climb%';

-- 2.33
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '__d%'; 

-- 2.34
SELECT COUNT(*) AS NumberOfRows,
COUNT({QuantityOnHand NOT NULL}),
SUM(QuantityOnHand) AS QuantityOnHandSum,
AVG(QuantityOnHand) AS QuantityOnHandAverage,
MIN(QuantityOnHand) AS QuantityOnHandMinimum,
MAX(QuantityOnHand) AS QuantityOnHandMaximum

FROM INVENTORY;

-- 2.35
-- COUNT - count the number of rows in the table or count the number of rows in the table where column name is not null.
-- SUM - calculate the sum of all value(numeric columns only).



-- 2.36
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand
FROM INVENTORY
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC;

-- 2.37
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;

-- 2.38
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING COUNT(SKU) < 2
ORDER BY TotalItemsOnHandLT3 DESC;

-- 2.39




