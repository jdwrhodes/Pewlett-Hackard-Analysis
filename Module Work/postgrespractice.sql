--This is a comment
create table "ourSchema".people(
name VarChar(30) not Null,
has_pet Boolean Default false,
pet_type VarChar(20),
pet_name VarChar(30),
pet_age Int
);

insert into "ourSchema".people (name, has_pet, pet_type, pet_name, pet_age) --list of column names
values
('Jacob', true,'dog', 'Champ', 7 );--list of values

select * from "ourSchema".people;

commit; -- saves changes

rollback; --reverts changes from the transaction log

insert into "ourSchema".people (name, has_pet, pet_type, pet_name, pet_age) --list of column names
values
('Jason', true,'dog', 'Champ', 7 ),--list of values
('Patricia', false,'', '', 0 ),
('Braden', true,'cat', 'Whiskers', 20 ),
('Brian', true,'fish', 'Bell', 9 ),
('Edgar', false,'', '', 0 );

select *
from "ourSchema".people
where pet_age > 7
;