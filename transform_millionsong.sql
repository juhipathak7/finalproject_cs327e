set search_path=millionsongs;

select max(get_utf8_bytes(artist_id)) from artist_term;


alter table artist_term add column cartist_id varchar(18);

update artist_term set cartist_id=artist_id;

select artist_id, cartist_id from artist_term order by random() limit 20;
   
select max(get_utf8_bytes(term)) from artist_term;

alter table artist_term add column cterm varchar(34);

update artist_term set cterm=term;

select term,cterm from artist_term order by random() limit 20;

select max(get_utf8_bytes(artist_id)) from artists;
 

alter table artists add column cartist_id varchar(18);

update artists set cartist_id=artist_id;

alter table songs_summary add column ctitle varchar(285);

alter table songs_summary add column ctitle varchar(373);

alter table songs_summary add column cartist_name varchar(373);

update songs_summary set cartist_name= artist_name;

select artist_name, cartist_name from artists order by random() limit 20;

select artist_name, cartist_name from songs_summary order by random() limit 20;

select artist_name, cartist_name from songs_summary order by random() limit 20;

select cartist_name, split_part(cartist_name, ' (',1) from songs_summary order by random() limit 20

select artist_name, cartist_name from songs_summary order by random() limit 20;

select cartist_name, split_part(cartist_name, ' (',1) from songs_summary order by random() limit 20;         

update artists set cartist_name= btrim(split_part(cartist_name, ' /',1));

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' (',1));


update songs_summary set cartisselect cartist_name, split_part(cartist_name, ' (',1) from songs_summary order by random() limit 20    
select artist_name, cartist_name from songs_summary order by random() limit 20;

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' /',1));                        

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' -',1));

select artist_name, cartist_name from songs_summary;

select artist_name, cartist_name from songs_summary order by random() limit 20;

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' ...',1))

select artist_name, cartist_name from songs_summary order by random() limit 20

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' ...',1))

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' ...',1));

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' ;',1));

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' with',1));

update songs_summary set cartist_name= btrim(split_part(cartist_name, ' Vs.',1));

update songs_summary set ctitle=title;

update songs_summary set ctitle= btrim(split_part(ctitle_name, ' ...',1));

update songs_summary set ctitle= btrim(split_part(ctitle, ' ...',1));

update songs_summary set ctitle= btrim(split_part(ctitle, ' /',1));

update songs_summary set ctitle= btrim(split_part(ctitle, ' (',1));

update songs_summary set ctitle= btrim(split_part(ctitle, ' [',1));

update songs_summary set ctitle= btrim(split_part(ctitle, ' ;',1));

update songs_summary set ctitle= btrim(split_part(ctitle, ' with',1));

select title,ctitle from songs_summary order by random() limit 20;

