select season1Date, count(season1Date) from farmers group by season1Date;
update farmers SET season1Date = regexp_replace(season1Date, '[^a-zA-Z]', ' ', 'g');
alter table farmers add column startseason varchar, add column endseason varchar;

update farmers SET startseason = split_part(season1Date, 'to', 1), endseason = split_part(season1Date, 'to', 2);
update farmers SET endseason = regexp_replace(endseason, 'Oc', 'October', 'g');
//select startseason, endseason, season1Date from farmers limit 25;