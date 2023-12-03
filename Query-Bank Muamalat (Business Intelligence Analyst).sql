SELECT 
  `pbirakamin.Orders.Orders`.Date as order_date,
  `pbirakamin.ProductCategory.ProductCategory`.CategoryName as category_name,
  `pbirakamin.Products.Products`.ProdName as product_name,
  `pbirakamin.Products.Products`.Price as product_price,
  `pbirakamin.Orders.Orders`.Quantity as order_qty,
  (`pbirakamin.Products.Products`.Price * `pbirakamin.Orders.Orders`.Quantity) as total_sales,
  `pbirakamin.Customers.Customers`.CustomerEmail as cust_email,
  `pbirakamin.Customers.Customers`.CustomerCity as cust_city
FROM `pbirakamin.Customers.Customers`
  INNER JOIN `pbirakamin.Orders.Orders`
  ON `pbirakamin.Customers.Customers`.CustomerID = `pbirakamin.Orders.Orders`.CustomerID
    INNER JOIN `pbirakamin.Products.Products`
    ON `pbirakamin.Orders.Orders`.ProdNumber = `pbirakamin.Products.Products`.ProdNumber
      INNER JOIN `pbirakamin.ProductCategory.ProductCategory`
      ON `pbirakamin.Products.Products`.CategoryID = `pbirakamin.ProductCategory.ProductCategory`.CategoryID
ORDER BY 1 ASC;