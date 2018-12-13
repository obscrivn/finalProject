
//select count(updateYear) from public.farmers where length(updateYear)<4;
update farmers SET updateyear = 'NA' where length(updateyear)<4;
update farmers SET updateyear = 'NA' where updateyear ILIKE '%/%';
select updateYear, count(updateYear) from farmers group by updateYear order by updateYear;
//alter table farmers alter updateyear int;
//select count(updateYear) from farmers;