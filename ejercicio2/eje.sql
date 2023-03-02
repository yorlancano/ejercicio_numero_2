create database venta_productos;
use venta_productos;

create table productos(
	 id_producto int primary key,
     nombre_producto varchar(50) not null,
     precio int ,
     id_categoria varchar(20),
     id_marca varchar(20)
);
describe productos;
drop table productos;

insert into productos(id_producto, nombre_producto, precio, id_categoria, id_marca) values (1112,"shampoo",4000,"aseopersonal123","/head&shoulders/2312");
insert into productos(id_producto, nombre_producto, precio, id_categoria, id_marca) values (2223,"camiseta",90000,"ropaA1232","/marcopolo/1234");
insert into productos(id_producto, nombre_producto, precio, id_categoria, id_marca) values (2323,"tenis",120000,"calzado3a32","/adidas/2412");

select * from productos;


create table categorias  (
	id_categoria varchar (20)  ,
	nombre_categoria varchar(50) not null
		
);
drop table categorias;
describe categorias;

insert into categorias(id_categoria, nombre_categoria) values ("aseopersonal123","ASEO PERSONAL");
insert into categorias(id_categoria, nombre_categoria) values ("ropaA1232","ROPA");
insert into categorias(id_categoria, nombre_categoria) values ("calzado3a32","CALZADO");

select * from categorias;

create table marcas(
	id_marca varchar(20) not null,
    nombre_marca varchar(20) not null
);
drop table marcas;
describe marcas;

insert into marcas(id_marca, nombre_marca) values ("/head&shoulders/2312","HEAD&SHOULDERS");
insert into marcas(id_marca, nombre_marca) values ("/marcopolo/1234","MARCO POLO");
insert into marcas(id_marca, nombre_marca) values ("/adidas/2412","ADIDAS");

select * from marcas;
create table clientes(
	id_cliente varchar(20) not null,
    nombre_cliente varchar(20) not null,
    direccion varchar(20) not null
	
);
describe clientes;
drop table clientes;

insert into clientes(id_cliente, nombre_cliente, direccion)values("1234","MARCELO","CR1-5A13");
insert into clientes(id_cliente, nombre_cliente, direccion)values("2424","MARIO","CL13 21B2");
insert into clientes(id_cliente, nombre_cliente, direccion)values("2829","ALEJANDRO","CR4 34B2");

select * from clientes;

create table pedidos(
	fecha_pedidos date,
    id_pedido varchar(50) not null,
    id_cliente varchar(20) not null,
    id_producto int not null
);
drop table pedidos;
describe pedidos;

insert into pedidos (fecha_pedidos, id_pedido, id_cliente, id_producto) values (str_to_date("10.30.2022", get_format(date,"usa")), "p2414","1234","1112");
insert into pedidos (fecha_pedidos, id_pedido, id_cliente, id_producto) values (str_to_date("12.30.2022", get_format(date,"usa")), "p4141","2424","2223");
insert into pedidos (fecha_pedidos, id_pedido, id_cliente, id_producto) values (str_to_date("09.30.2022", get_format(date,"usa")), "p5032","2829","2323");

select * from pedidos;