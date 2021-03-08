create table "tennisPlayers".players (
    player_id Int,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    hand VARCHAR(2),
    country_code VARCHAR(4)
);
create table "tennisPlayers".matches(
    loser_age DEC,
    loser_id Int,
    loser_name VARCHAR(30),
    loser_rank Int,
    winner_age Dec,
    winner_id Int,
    winner_name VARCHAR(30),
    winner_rank Int
);
commit;

select * from "tennisPlayers".players

select * from "tennisPlayers".matches

select a.first_name,a.last_name,a.hand
from "tennisPlayers".players a,
"tennisPlayers".matches b
where a.player_id = b.winner_id; -- inner join