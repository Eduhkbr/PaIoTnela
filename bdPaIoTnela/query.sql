create table Receitas(
    idReceita int primary key identity (1,1),
    nomeReceita varchar (30) 
    );

create table Temperatura (
  idTemperatura int primary key identity (1,1),
  temperatura real,
  umidade real
  );

create table ReceitaTemperatura (
  idReceitaTemperatura int primary key identity (1,1),
  idReceita int foreign key references Receitas (idReceita),
  idTemperatura int foreign key references Temperatura (idTemperatura)
  );


select * from Receitas;
select * from Temperatura;

select * from ReceitaTemperatura;

insert into Receitas(nomeReceita) values 
('Arroz'),
('Feijão'),
('Macarrão');

insert into Temperatura(temperatura,umidade) values 
(25, 60),
(22, 40),
(30, 80);

insert into ReceitaTemperatura(idReceita,idTemperatura) values 
(1, 1),
(2, 2),
(3, 3);
