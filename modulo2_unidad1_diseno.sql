CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  -- Esta es la columna con la primary key es INT porque es un número entero creciente y único
  nombre VARCHAR (100),
  -- Esta columna es de texto pero con un límite de 100 caracteres
  perfil_bio TEXT,
  -- Esta columna es de texto más largo sin restricciones de cantidad máxima de caracteres
  fecha_registro DATE
  -- Esta columna es de fecha sin hora
  );
CREATE TABLE productos (
  id_producto INT PRIMARY KEY,
  -- Esta columna es la primary key de esta tabla y es INT porque es un número entero creciente
  descripcion VARCHAR (255),
  -- Esta columna se limita a una descripción con un máximo de 255 caracteres
  precio DECIMAL (10, 2),
  -- Esta columna es el precio del producto con un máximo de 10 dígitos y dos decimales
  esta_activo BIT
  --PARA PONER FALSE O TRUE
  );
