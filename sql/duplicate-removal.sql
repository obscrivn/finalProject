select id, count(id) from public.farmers group by id having count(*)>1;
select id from public.farmers where id is null;
select id, length(id) from public.farmers where length(id)>10;
