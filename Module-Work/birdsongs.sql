create table "ourSchema".birdsongs(
english_name varchar(30),
country varchar(15),
latitude DEC,
longitude DEC);

commit;

select * from "ourSchema".birdsongs;

select a.english_name
from "ourSchema".birdsongs a;
where a.english_name like 'Dunl_n'; -- underscore is a single character wildcard
