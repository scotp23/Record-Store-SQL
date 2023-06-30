select * from albums
where release_year < 2000;

select * from albums
where name like '%er%' or band_id = 2;

select * from albums
where release_year = 1984 AND band_id = 1

select * from albums
where release_year between 2000 and 2018;

select * from albums
where release_year is null;

delete from albums WHERE id = 5;

select * from albums;

select * from bands
join albums on bands.id = albums.band_id;

select * from bands
left join albums on bands.id = albums.band_id;

select  sum(release_year) from albuns;

select band_id, count(band_id) from albums 
group by band_id;

select b.name as band_name, count(a.id) as num_albums
from bands as b 
left join albums as a on b.id = a.band_id
where b.name = 'Deuce'
group by b.id
having num_albums = 1;