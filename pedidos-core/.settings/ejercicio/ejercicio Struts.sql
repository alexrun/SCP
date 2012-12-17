create schema jdbcdemo2;
set schema jdbcdemo2;

drop table jdbcdemo2.tarjeta_credito;
drop table jdbcdemo2.pago_cheque;
drop table jdbcdemo2.forma_pago;
drop table jdbcdemo2.detalle_pedido;
drop table jdbcdemo2.pedidos;
drop table jdbcdemo2.item;
drop table jdbcdemo2.cliente2;
drop table jdbcdemo2.categoria;


create table jdbcdemo2.categoria(
        id integer not null primary key generated always as identity (no cache),
        nombre varchar(40) not null,
        descripcion varchar(300)      
);



create table jdbcdemo2.cliente2(
        id integer not null primary key generated always as identity (no cache),
        nombre varchar(20) not null,
        apellido varchar(20) not null,
        direccion varchar(80) not null,
        ciudad varchar(20),
        telefonos varchar(20),
        cedula char(10) not null unique
);

create table jdbcdemo2.item(
        id integer not null primary key generated always as identity (no cache),
        nombre varchar(50) not null,
        descripcion varchar(200),
        precio_compra decimal(10,2),
        precio_venta decimal(10,2),
        categoria_ref integer not null,
        imagen_url varchar(100),
        constraint fk_cat022 (categoria_ref) references jdbcdemo2.categoria(id) on delete restrict on update no action
);

create table jdbcdemo2.pedidos(
        id integer not null primary key generated always as identity (no cache),
        fecha DATE not null default current_date,
        cliente_ref integer not null,
        estatus varchar(10),
        constraint fk_cat021 (cliente_ref) references jdbcdemo2.cliente2(id) on delete restrict on update no action
        
        
);

create table jdbcdemo2.detalle_pedido(}
        id integer not null primary key generated always as identity (no cache),
        pedido_ref integer not null, 
        item_ref integer not null,
        cantidad integer not null,
        precio decimal(10,2) not null,
        constraint fk_cat661 (pedido_ref) references jdbcdemo2.pedidos(id) on delete restrict on update no action,
        constraint fk_cat041 (item_ref) references jdbcdemo2.item(id) on delete restrict on update no action
        
        
);

create table jdbcdemo2.forma_pago(
  id integer not null primary key generated always as identity (no cache),
  propietario varchar(20) not null,
  fecha_pago date,
  pedido_ref integer not null,
  monto decimal(10,2) not null,
  constraint fk_cat023 (item_ref) references jdbcdemo2.item(id) on delete restrict on update no action
  
  
  
);

create table jdbcdemo2.pago_cheque(
        id_pago_cheque integer not null primary key,
        numero_cheque integer not null,
        banco varchar(20) not null,
        numero_cuenta varchar(20) not null,
        fecha_cheque date,
        constraint fk_cat021 (id_pago_cheque) references jdbcdemo2.forma_pago(id) on delete restrict on update no action
);

create table jdbcdemo2.tarjeta_credito(
        id_pago_tarjeta integer not null primary key,
        numero_tarjeta integer not null,
        mes_vence integer not null,
        anyo_vence integer not null,
        banco varchar(20),
        constraint fk_cat021 (id_pago_tarjeta) references jdbcdemo2.forma_pago(id) on delete restrict on update no action
);

