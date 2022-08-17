create database bd_Auto_pecas;
use bd_Auto_pecas;

create table tb_Fornecedor(

id_CNPJ int primary key auto_increment, 
nm_Empresa varchar(50) not null,
nm_Produto varchar(30) not null,
ds_Qtd_Produto_Fornecido int not null,
ds_Endereco varchar(100) not null,
ds_telefone varchar(9) not null
);

create table tb_Cliente(

id_CPF	int primary Key,
nm_cliente	varchar (50) not null,
ds_Estado_civil ENUM('Solteiro(a)','Casado(a)', 'Viuvo(a)', 'Divorciado(a)') null,
ds_dt_nascimento date null,
ds_Sexo ENUM('Masc', 'Fem'),
ds_Nacionalidade varchar (30)
);

create table tb_Pedido(	
id_nota_fiscal  int primary key auto_increment, 
ds_dt_pedido date not null,
ds_valor decimal not null, 
nm_produto varchar(30) not null,
ds_forma_pgto varchar(50), 
ds_unidade int not null
);

INSERT INTO tb_Fornecedor
(id_CNPJ, nm_Empresa, nm_Produto, ds_Qtd_Produto_Fornecido, ds_Endereco, ds_telefone )
values
(default, 'Master', 'Pneu', '200', 'Rio de Janeiro', '3422-2341'),
(default, 'Fenix Miunto', 'Água do radiador', '400', 'São Paulo', '3321-2321'),
(default, 'Mira Mira', 'Aspirador portatil', '50', 'Manaus', '3121-9078'),
(default, 'Sabia nana', 'Óleo automotivo', '500', 'São Paulo', '3030-4554'),
(default, 'BlueAsk', 'calota', '1000', 'Praia Grande', '3030-2312'),
(default, 'Set', 'Freio a disco', '200', 'Curitiba', '3444-4321'),
(default, 'Porder', 'Campa de volante', '30', 'Japão', '3555-5676'),
(default, 'Jac', 'Cruzeta', '100', 'Minas Gerais', '3232-2333'),
(default, 'Master', 'Farol', '400', 'Rio de Janeiro', '3422-2341'),
(default, 'Mira Mira', 'Filtro do ar condicionado', '500', 'Manaus', '3121-9078');

SELECT * FROM tb_Fornecedor;
DESCRIBE tb_Fornecedor;

INSERT INTO tb_Cliente
(id_CPF, nm_Cliente, ds_Estado_civil, ds_dt_nascimento, ds_Sexo, ds_Nacionalidade)
values
(default, 'Matheus', 'Solteiro(a)', '27/10/1987', 'Masc', 'Brasileiro'),
(default, 'Josefin', 'Divorciado(a)', '01/05/1965', 'Masc', 'Brasileiro'),
(default, 'Luis Felipe', 'Solteiro(a)', '28/01/2006', 'Masc', 'Brasileiro'),
(default, 'Luis', 'Solteiro(a)', '15/02/1948', 'Masc', 'Brasileiro'),
(default, 'Diego', 'Casado(a)', '08/08/1999', 'Masc', 'Brasileiro'),
(default, 'Manuel', 'Solteiro(a)', '04/02/1985', 'Masc', 'Brasileiro'),
(default, 'Tatiane', 'Casado(a)', '27/07/1999', 'Fem', 'Brasileira'),
(default, 'Arlete', 'Divorciado(a)', '08/03/1985', 'Fem', 'Brasileira'),
(default, 'Dandara', 'Casado(a)', '02/01/1985', 'Fem', 'Brasileira'),
(default, 'Nathalie', 'Casado(a)', '22/08/1985', 'Fem', 'Brasileira');

SELECT * FROM tb_Cliente;
DESCRIBE tb_Cliente;

INSERT INTO tb_Pedido
(id_nota_fiscal,  ds_dt_pedido, ds_valor, nm_produto, ds_forma_pgto)
values
(default, '25/02/2022', '5.300,00', 'Pneu', 'Dinheiro', '200'),
(default, '25/02/2022', '3.000,00', 'Água do Radiador', 'Dinheiro', '400'),
(default, '25/02/2022', '2.00,00', 'Calota', 'Dinheiro', '1000'),
(default, '25/02/2022', '10.300,00', 'Óleo automotivo', 'Dinheiro', '500'),
(default, '25/02/2022', '3.250,00', 'Cruzeta', 'Dinheiro', '100'),
(default, '04/02/2022', '6.410,00', 'Farol', 'Dinheiro', '400'),
(default, '25/02/2022', '21.000,00', 'Filtro do ar condicionado', 'Dinheiro', '500'),
(default, '25/02/2022', '6.410,00', 'Capa de volante', 'Dinheiro', '30'),
(default, '25/02/2022', '7.700,00', 'Freio a disco', 'Dinheiro', '200'),
(default, '25/02/2022', '2.510,00', 'Aspirador portátil', 'Dinheiro', '50');

SELECT * FROM tb_Pedido;
DESCRIBE tb_Pedido;

create table tb_Empresa(
id_CNPJ int primary key auto_increment,
nm_Empresa varchar(30) not null,
ds_Endereco varchar(100) not null,
ds_Telefone varchar(9) not null,
ds_Iso varchar(255) not null
);

INSERT INTO tb_Empresa
(id_CNPJ, nm_Empresa, ds_Endereco, ds_Telefone, ds_Iso)
values
(default, 'Auto Peças GG', 'Rua mario giordino de souza n° 955', '3423-2135', '9001');

create table tb_Produto(
id_Produto int primary key auto_increment,
nm_Produto varchar(30) not null,
ds_Qtd_de_produto int not null,
ds_marca_do_produto varchar(30) not null,
ds_Tipo ENUM('Carro', 'Moto', 'Ônibus', 'Caminhão')
);

INSERT INTO tb_Produto
(id_Produto, nm_Produto, ds_Qtd_de_produto, ds_marca_do_produto, ds_Tipo)
values
(default, 'Óleo automativo', '200', 'Óleo bom', 'Carro'),
(default, 'Água do Radiador', '400', 'Água da boa', 'Carro'),
(default, 'Calota', '1000', 'Calotinha', 'Carro'),
(default, 'Pneu de caminhão', '500', 'Pneuzão', 'Caminhão'),
(default, 'Óleo de moto', '50', 'Ólinho', 'Moto'),
(default, 'Pneu para ônibus', '410', 'Pniu', 'Ônibus');

alter table tb_Pedido
add constraint fk_pedido_fornecedor foreign key (id_CNPJ) references tb_Fornecedor(id_CNPJ),
add constraint fk_pedido_cliente foreign key (id_CPF) references tb_Cliente(id_CPF),
add constraint fk_pedido_empresa foreign key (id_CNPJ) references tb_Empresa(id_CNPJ),
add constraint fk_pedido_produto foreign key (id_Produto) references tb_Produto(id_Produto); 
