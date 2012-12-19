//create schema alexrun1;
set schema alexrun1;

drop table alexrun1.tarjeta_credito;
drop table alexrun1.pago_cheque;
drop table alexrun1.forma_pago;
drop table alexrun1.detalle_pedido;
drop table alexrun1.pedidos;
drop table alexrun1.item;
drop table alexrun1.cliente;
drop table alexrun1.categoria;


create table alexrun1.categoria(
        id integer not null primary key generated always as identity (no cache),
        nombre varchar(40) not null,
        descripcion varchar(300)      
);



create table alexrun1.cliente(
        id integer not null primary key generated always as identity (no cache),
        nombre varchar(20) not null,
        apellido varchar(20) not null,
        direccion varchar(80) not null,
        ciudad varchar(20),
        telefonos varchar(20),
        cedula char(10) not null unique
);

create table alexrun1.item(
        id integer not null primary key generated always as identity (no cache),
        nombre varchar(50) not null,
        descripcion varchar(200),
        precio_compra decimal(10,2),
        precio_venta decimal(10,2),
        categoria_ref integer not null,
        imagen_url varchar(100),
        constraint fk_cat022 foreign key (categoria_ref) references alexrun1.categoria(id) on delete restrict on update no action
);

create table alexrun1.pedidos(
        id integer not null primary key generated always as identity (no cache),
        fecha DATE not null default current_date,
        cliente_ref integer not null,
        estatus varchar(10),
        constraint fk_cat021 foreign key (cliente_ref) references alexrun1.cliente(id) on delete restrict on update no action
        
        
);

create table alexrun1.detalle_pedido(
        id integer not null primary key generated always as identity (no cache),
        pedido_ref integer not null, 
        item_ref integer not null,
        cantidad integer not null,
        precio decimal(10,2) not null,
        constraint fk_cat661 foreign key (pedido_ref) references alexrun1.pedidos(id) on delete restrict on update no action,
        constraint fk_cat041 foreign key (item_ref) references alexrun1.item(id) on delete restrict on update no action
        
        
);

create table alexrun1.forma_pago(
  id integer not null primary key generated always as identity (no cache),
  propietario varchar(20) not null,
  fecha_pago date,
  pedido_ref integer not null,
  monto decimal(10,2) not null,
  constraint fk_cat023 foreign key (pedido_ref) references alexrun1.pedidos(id) on delete restrict on update no action
  
  
  
);

create table alexrun1.pago_cheque(
        id_pago_cheque integer not null primary key,
        numero_cheque integer not null,
        banco varchar(20) not null,
        numero_cuenta varchar(20) not null,
        fecha_cheque date,
        constraint fk_cat077 foreign key (id_pago_cheque) references alexrun1.forma_pago(id) on delete restrict on update no action
);

create table alexrun1.tarjeta_credito(
        id_pago_tarjeta integer not null primary key,
        numero_tarjeta integer not null,
        mes_vence integer not null,
        anyo_vence integer not null,
        banco varchar(20),
        constraint fk_cat087 foreign key (id_pago_tarjeta) references alexrun1.forma_pago(id) on delete restrict on update no action
);
