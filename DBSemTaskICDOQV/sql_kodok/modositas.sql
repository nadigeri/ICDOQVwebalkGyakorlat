alter table igazgato modify column telszam varchar(15);
alter table vevo modify column kartya varchar(16);
alter table bolt drop table elerhetoe;
alter table jatek add ar int;
update jatek set ar = 21000 where J_id = 1;
update jatek set ar = 19000 where J_id = 2;
update jatek set ar = 18000 where J_id = 3;
update jatek set ar = 10000 where J_id = 4;
update jatek set ar = 11000 where J_id = 5;
update jatek set ar = 9000 where J_id = 6;
update jatek set ar = 7000 where J_id = 7;
update jatek set ar = 0 where J_id = 8;
update jatek set ar = 22000 where J_id = 9;
update jatek set ar = 5000 where J_id = 10;
update jatek set ar = 16000 where J_id = 11;