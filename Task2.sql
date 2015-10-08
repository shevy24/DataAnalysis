create table purchases
(purchase_id varchar2(5) primary key,
item_id varchar2(5),
user_id varchar2(5),
user_type varchar2(3),
purchase_time date);

create table new_purchases
(purchase_id varchar2(5) primary key,
item_id varchar2(5),
user_id varchar2(5),
user_type varchar2(3),
purchase_time date);

create or replace trigger new_purchase
after insert
on purchases
for each row
begin
if :new.purchase_time = sysdate
then
insert into new_purchases (purchase_id, item_id, user_id, user_type, purchase_time)
values
(:new.purchase_id, :new.item_id, :new.user_id, :new.user_type, :new.purchase_time);
end if;
end;
/

insert into purchases
values (005, 101, 'a01', 'new', '12-feb-13');
insert into purchases
values (006, 101, 'a01', 'new', sysdate);
insert into purchases
values (008, 101, 'a01', 'new', sysdate);

select * from new_purchases;

