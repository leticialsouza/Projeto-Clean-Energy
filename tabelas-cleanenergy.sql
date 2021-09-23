create database db_clean_energy;

use db_clean_energy;

create table tb_categoria(
	id_categoria int not null auto_increment,
    categoria_produto varchar(255) not null,
    material_categoria varchar(255) not null,
    watt_categoria decimal(8.2),
	primary key (id_categoria)
);

create table tb_produto(
	id_produto int not null auto_increment,
    nome_produto varchar(255) not null,
    preco_produto decimal(8.2) not null,
    quantidade_produto int not null,
	imagem_produto varchar(255) not null,
    fk_categoria int not null,
    fk_usuario int not null,
    primary key (id_produto),
    foreign key (fk_categoria) references tb_categoria(id_categoria),
    foreign key (fk_usuario) references tb_usuario(id_usuario)
);

create table tb_usuario(
	id_usuario int not null auto_increment,
    nome_completo varchar(255) not null,
    email_usuario varchar(255) not null,
    senha_usuario varchar(255) not null,
    primary key (id_usuario)
);

select * from tb_categoria
