set search_path=discog;
show search_path;
select artist_name from artists order by random() limit 20;
select artist_name from artists order by random() limit 20;

create or replace function get_utf8_bytes(col varchar(max))
returns int
stable AS $$
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
return len(col.encode('utf-8'))
language plpythonu;

select max(get_utf8_bytes(artist_name)) from artists;


alter table artists add column cartist_name varchar(149);

update artists set cartist_name = artist_name;

select artist_name, cartist_name from artists order by random() limit 20;

select artist_name, cartist_name from artists order by random() limit 20;

select cartist_name, split_part(cartist_name, ' (',1) from artists order by random() limit 20;

update artists set cartist_name= btrim(split_part(cartists_name, ' (',1)); 

update artists set cartist_name= btrim(split_part(cartist_name, ' (',1));

select max(get_utf8_bytes(artist_name)) from artists;

alter table artists add column creal_name varchar(149);

update artists set creal_name = real_name;

select max(get_utf8_bytes(real_name)) from artists;

alter table artists drop column creal_name;

alter table artists add column creal_name varchar(244);

update artists set creal_name = real_name;

select artist_name, cartist_name from artists order by random() limit 20;

select real_name, creal_name from artists order by random() limit 20;

update artists set creal_name= btrim(split_part(creal_name, ' (',1));

select max(get_utf8_bytes(genre_name)) from genres;
 
alter table genres add column cgenre_name varchar(20);

update artists set cgenre_name = genre_name

update artists set cgenre_name = genre_name;

update genres set cgenre_name = genre_name;

select genre_name, cgenre_name from genres order by random() limit 20;

select genre_name, cgenre_name from genres order by random() limit 20;

select genre_name, cgenre_name from genres order by random() limit 20;

update genres set cgenre_name= btrim(split_part(genre_name, '/',1));

select genre_name, cgenre_name from genres order by random() limit 20;

select max(get_utf8_bytes(label_name)) from labels;

alter table labels add column clabel_name varchar(255);

update labels set clabel_name = label_name;

select label_name, clabel_name from labels order by random() limit 20;

update labels set clabel_name= btrim(split_part(clabel_name, ' (',1));

select label_name, clabel_name from labels order by random() limit 20;

select max(get_utf8_bytes(title)) from releases;

alter table releases add column ctitle varchar(290);

update releases set ctitle=title;

select title, ctitle from releases order by random() limit 20;

select title, ctitle from releases order by random() limit 20;

select title, ctitle from releases order by random() limit 20;

update releases set ctitle=btrim(split_part(ctitle, ' (',1));

update releases set ctitle=btrim(split_part(ctitle, ' /',1));

select title,ctitle from releases order by random() limit 20;

select title,ctitle from releases order by random() limit 20;

update releases set ctitle=btrim(split_part(ctitle, ' -',1));

update releases set ctitle=btrim(split_part(ctitle, ' ;',1));

update releases set ctitle=btrim(split_part(ctitle, ' :',1));

alter table releases add column year char(4);

update releases set year = btrim(split_part(released, '/' , 3));

update releases set year = btrim(split_part(released, '-' , 1)) where length(btrim(split_part(released, '-' , 1))) = 4 and year = '';

select year from releases order by random() limit 20;
 
select max(get_utf8_bytes(format_type)) from releases_formats;

alter table releases_formats add column cformat_type varchar(17);

update releases_formats set cformat_type=format_type;

select cformat_type, format_type from releases_formats order by random() limit 20;
