use  venta_productos;


select productos.nombre_producto, 
	productos.precio,
	categorias.nombre_categoria, 
    marcas.nombre_marca,
    pedidos.id_pedido,
    clientes.nombre_cliente,
    clientes.direccion
    from 
    productos 
    inner join categorias on 
    productos.id_categoria = categorias.id_categoria 
    inner join marcas on
    productos.id_marca = marcas.id_marca
    inner join pedidos on
    productos.id_producto = pedidos.id_producto
    inner join clientes on
    pedidos.id_cliente = clientes.id_cliente 
    where pedidos.fecha_pedidos = "2022-10-30";
    