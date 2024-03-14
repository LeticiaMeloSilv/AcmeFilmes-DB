create database db_acme_filmes_turma_ba;
use db_acme_filmes_turma_ba;

create table tbl_filme(
id int not null auto_increment primary key,
nome varchar(80) not null,
sinopse text not null,
duracao time not null,
data_lancamento date not null,
data_relancamento date,
foto_capa varchar(200) not null,
valor_unitario float, 

unique key(id),/*garante que o id seja unico*/
unique index(id)/*organiza a tabela pelo id*/
);

drop table tbl_filme;
show tables;
desc tbl_filme;

insert into tbl_filme(nome,sinopse,duracao,data_lancamento,data_relancamento,foto_capa,valor_unitario) values
('Tarzan: A Evolução da Lenda','Após seus pais serem mortos, um bebê é criado por uma gorila, que passa a tratá-lo como se fosse seu filho. Ao crescer ele se torna Tarzan (Kellan Lutz), o rei da selva. 
É quando precisa enfrentar um exército de mercenários enviado à floresta por um malvado executivo da Greystoke Energies, a empresa que um dia pertenceu aos pais de Tarzan.
 Para enfrentá-los ele conta com a ajuda de Jane Porter (Spencer Locke), uma jovem que chega à floresta após um acidente no avião em que estava.','01:34:00','2014/01/17',null,
 'https://br.web.img2.acsta.net/pictures/13/12/30/17/00/149548.jpg','28.40'),
 ('A origem dos Guardiões','As crianças do mundo inteiro são protegidas por um seleto grupo de guardiões: Papai Noel, Fada do Dente, Coelho da Páscoa e Sandman. São eles que garantem a inocência e as lendas infantis. 
Mas um espírito maligno, o Breu, pretende transformar todos os sonhos em pesadelo, despertando medo em todas as crianças. Para combater este adversário poderoso, a Lua designa um novo guardião para ajudar o grupo: 
Jack Frost, um garotinho invisível que controla o inverno. Sem conhecer sua própria vocação de guardião, ele embarca em uma aventura na qual vai descobrir tanto sobre as crianças quanto sobre seu próprio passado.','01:37:00','2012/11/30',null,
'https://br.web.img3.acsta.net/medias/nmedia/18/91/31/06/20304486.jpg','12.90');
 

select cast(last_insert_id() as DECIMAL) as id from tbl_filme limit 1;