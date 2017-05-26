set search_path=musicbrainz;

--gender table---
alter table musicbrainz.Gender add column cname varchar(6);
update musicbrainz.Gender set cname=name;
update musicbrainz.gender set cname =btrim(cname);

--artist table--
alter table musicbrainz.artist add column cname varchar(311);
update musicbrainz.artist set cname=name;
update musicbrainz.artist set cname = btrim(cname);
update musicbrainz.artist set cname=initcap(cname);

update musicbrainz.artist set cname = split_part(cname,' -',1);
update musicbrainz.artist set cname = split_part(cname,' :',1);
update musicbrainz.artist set cname=split_part(cname,' ,',1);
update musicbrainz.artist set cname=split_part(cname,' /',1);
update musicbrainz.artist set cname=split_part(cname,' (',1);
update musicbrainz.artist set cname=split_part(cname,' [',1);
update musicbrainz.artist set cname=split_part(cname,' ...',1);
update musicbrainz.artist set cname=split_part(cname,' with',1);
update musicbrainz.artist set cname=split_part(cname,' Vs.',1);

--medium_format table---
alter table musicbrainz.Medium_format add column cname varchar(25);
update musicbrainz.Medium_format set cname=name;
update musicbrainz.Medium_format set cname=btrim(cname);

update musicbrainz.Medium_format set cname = split_part(cname,' -',1);
update musicbrainz.Medium_format set cname = split_part(cname,' :',1);
update musicbrainz.Medium_format set cname=split_part(cname,' ,',1);
update musicbrainz.Medium_format set cname=split_part(cname,' /',1);
update musicbrainz.Medium_format set cname=split_part(cname,' (',1);
update musicbrainz.Medium_format set cname=split_part(cname,' [',1);
update musicbrainz.Medium_format set cname=split_part(cname,' ...',1);
update musicbrainz.Medium_format set cname=split_part(cname,' with',1);
update musicbrainz.Medium_format set cname=split_part(cname,' Vs.',1);

---medium table--
alter table musicbrainz.medium add column cname varchar(478);
update musicbrainz.medium set cname=name;
update musicbrainz.medium set cname=initcap(btrim(cname));

---release table---
alter table musicbrainz.release add column cname varchar(865);
update musicbrainz.release set cname=name;
update musicbrainz.release set cname=initcap(btrim(cname));

update musicbrainz.release set cname = split_part(cname,' -',1);
update musicbrainz.release set cname = split_part(cname,' :',1);
update musicbrainz.release set cname=split_part(cname,' ,',1);
update musicbrainz.release set cname=split_part(cname,' /',1);
update musicbrainz.release set cname=split_part(cname,' (',1);
update musicbrainz.release set cname=split_part(cname,' [',1);
update musicbrainz.release set cname=split_part(cname,' ...',1);
update musicbrainz.release set cname=split_part(cname,' with',1);
update musicbrainz.release set cname=split_part(cname,' Vs.',1);

---label table---
alter table musicbrainz.label add column cname varchar(118);
update musicbrainz.label set cname=name;
update musicbrainz.label set cname=btrim(cname);
update musicbrainz.label set cname=initcap(cname);
	
update musicbrainz.label set cname = split_part(cname,' -',1);
update musicbrainz.label set cname = split_part(cname,' :',1);
update musicbrainz.label set cname = split_part(cname,' ,',1);
update musicbrainz.label set cname = split_part(cname,' /',1);
update musicbrainz.label set cname = split_part(cname,' (',1);
update musicbrainz.label set cname = split_part(cname,' [',1);
update musicbrainz.label set cname = split_part(cname,' ...',1);
update musicbrainz.label set cname = split_part(cname,' with',1);
update musicbrainz.label set cname = split_part(cname,' Vs.',1);

---area table---
alter table musicbrainz.area add column cname varchar(74);
update musicbrainz.area set cname=name;
update musicbrainz.area set cname=btrim(cname);

--artist_type---
alter table musicbrainz.artist_type add column cname varchar(9);
update musicbrainz.artist_type set cname=name;
update musicbrainz.artist_type set cname=btrim(cname);

---artist_alias---
alter table musicbrainz.artist_alias add column cname varchar(209);
update musicbrainz.artist_alias set cname=name;
update musicbrainz.artist_alias set cname=initcap(btrim(cname));

---instrument table---
alter table musicbrainz.instrument add column cname varchar(37);
update musicbrainz.instrument set cname=name;
update musicbrainz.instrument set cname=initcap(btrim(cname));

---instrument alias---
alter table musicbrainz.instrument_alias add column cname varchar(58);
update musicbrainz.instrument_alias set cname=name;
update musicbrainz.instrument_alias set cname=initcap(btrim(cname));

---event_type table---
alter table musicbrainz.event_type add column ctype_name varchar(18);
update musicbrainz.event_type set ctype_name=type_name;
update musicbrainz.event_type set ctype_name=btrim(ctype_name);

---event table--
alter table musicbrainz.event add column cevent_name varchar(139);
update musicbrainz.event set cevent_name=event_name;
update musicbrainz.event set cevent_name=btrim(cevent_name);
update musicbrainz.event set cevent_name=initcap(cevent_name);
alter table musicbrainz.event add column year varchar(4);
update musicbrainz.event set year=btrim(begin_date_year);









