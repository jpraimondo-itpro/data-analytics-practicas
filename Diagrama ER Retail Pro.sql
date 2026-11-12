CREATE TABLE [categorias] (
  [id_categoria] int PRIMARY KEY,
  [nombre_categoria] nvarchar(255)
)
GO

CREATE TABLE [territorios] (
  [id_territorio] int PRIMARY KEY,
  [pais] nvarchar(255),
  [ciudad] nvarchar(255)
)
GO

CREATE TABLE [clientes] (
  [id_cliente] int PRIMARY KEY,
  [nombre] nvarchar(255),
  [email] nvarchar(255),
  [id_territorio] int,
  [segmento] nvarchar(255),
  [fecha_registro] date
)
GO

CREATE TABLE [productos] (
  [id_producto] int PRIMARY KEY,
  [nombre_producto] nvarchar(255),
  [id_categoria] int,
  [id_subcategoria] int,
  [precio_unitario] decimal
)
GO

CREATE TABLE [ventas] (
  [id_venta] int PRIMARY KEY,
  [id_cliente] int,
  [id_producto] int,
  [fecha_venta] date,
  [cantidad] int,
  [total_venta] decimal,
  [medio_pago] nvarchar(255)
)
GO

CREATE TABLE [subcategorias] (
  [id_subcategoria] int PRIMARY KEY,
  [nombre_subcategoria] nvarchar(255)
)
GO

ALTER TABLE [clientes] ADD FOREIGN KEY ([id_territorio]) REFERENCES [territorios] ([id_territorio])
GO

ALTER TABLE [productos] ADD FOREIGN KEY ([id_categoria]) REFERENCES [categorias] ([id_categoria])
GO

ALTER TABLE [productos] ADD FOREIGN KEY ([id_subcategoria]) REFERENCES [subcategorias] ([id_subcategoria])
GO

ALTER TABLE [ventas] ADD FOREIGN KEY ([id_cliente]) REFERENCES [clientes] ([id_cliente])
GO

ALTER TABLE [ventas] ADD FOREIGN KEY ([id_producto]) REFERENCES [productos] ([id_producto])
GO
