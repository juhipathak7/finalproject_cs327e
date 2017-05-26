--time 1369.712 ms--
create or replace view v_electronic_female_releases as
SELECT mba.name, COUNT(drg.release_id)
FROM mb_artist mba JOIN discog_artists da on mba.name = da.artist_name
JOIN mb_gender mbg on mba.gender = mbg.gender_id 
JOIN discog_releases_artists dra ON da.artist_id=dra.artist_id
JOIN discog_releases dr ON dr.release_id=dra.release_id
JOIN discog_releases_genres drg ON drg.release_id=dr.release_id
JOIN discog_genres dg ON drg.genre_id=dg.genre_id
WHERE dg.genre_name = 'Electronic' AND mbg.name = 'Female'
GROUP BY mba.name
ORDER BY mba.name asc;

--time 892.866 ms--
create or replace view v_vinyl_releases as
SELECT e.genre_name, count(d.title)
FROM discog_releases d
JOIN mb_release m on d.title=m.name
JOIN discog_releases_genres g on d.release_id=g.release_id
JOIN discog_genres e on g.genre_id=e.genre_id
JOIN mb_medium l on l.release_id=m.release_id
JOIN mb_medium_format f on f.medium_format_id=l.medium_format_id
WHERE f.name='7" Vinyl' 
GROUP BY e.genre_name
ORDER BY count(d.title) desc;

--time 910.260 ms--
create or replace view v_colombian_electronic as
SElECT da.artist_name, COUNT(*)
FROM mb_artist mba
JOIN discog_artists da on mba.name = da.artist_name
JOIN discog_releases_artists dra ON da.artist_id=dra.artist_id
JOIN discog_releases dr ON dr.release_id=dra.release_id
JOIN discog_releases_genres drg ON drg.release_id=dr.release_id
JOIN discog_genres dg ON drg.genre_id=dg.genre_id
JOIN mb_area ON mb_area.area_id=mba.area
WHERE dg.genre_name = 'Electronic' AND mb_area.name='Colombia'
GROUP BY  da.artist_name
ORDER BY da.artist_name asc;

--time 1180.760 ms--
create or replace view v_pop_artist_type as
SElECT mbat.name, COUNT(*)
FROM mb_artist mba
JOIN discog_artists da on mba.name = da.artist_name
JOIN mb_artist_type mbat on mbat.artist_type_id=mba.artist_type_id
JOIN discog_releases_artists dra ON da.artist_id=dra.artist_id
JOIN discog_releases dr ON dr.release_id=dra.release_id
JOIN discog_releases_genres drg ON drg.release_id=dr.release_id
JOIN discog_genres dg ON drg.genre_id=dg.genre_id
WHERE dg.genre_name='Pop'
GROUP BY mbat.name
ORDER BY COUNT desc;

--time 1162.285 ms--
create or replace view v_classical_label as
SELECT l.name, COUNT(*) FROM discog_releases d
JOIN mb_release m on d.title=m.name
JOIN discog_releases_genres g on d.release_id=g.release_id
JOIN discog_genres e on g.genre_id=e.genre_id
JOIN mb_release_label rl on m.release_id=rl.release_id
JOIN mb_label l on l.label_id=rl.label_id
WHERE e.genre_name= 'Classical'
GROUP BY l.name
ORDER BY COUNT desc;

--time 902.126 ms--
create or replace view v_group_aliases as
SELECT mba.name, count(mbaa.name)
FROM mb_artist mba
JOIN mb_artist_alias mbaa ON mbaa.artist_id=mba.artist_id
JOIN mb_artist_type mbat ON mbat.artist_type_id=mba.artist_type_id
WHERE mbat.name='Group'
GROUP BY mba.name
ORDER BY count(mbaa.name) desc;

-- time 181.359 ms--
create or replace view v_instrument_aliases as 
SElECT mbi.name, count(mbia.name)
FROM mb_instrument mbi
JOIN mb_instrument_alias mbia ON mbi.instrument_id=mbia.instrument_id
GROUP BY mbi.name
HAVING count(mbia.name)>15
ORDER BY count(mbia.name) desc;

--time 865.069 ms--
create or replace view v_festivals_90s as
SELECT e.year, COUNT(*)
FROM mb_event e 
JOIN mb_event_type et ON e.event_type_id=et.event_type_id
WHERE CAST(e.year as int)<=2010 and CAST(e.year as int)>=1995 and et.type_name='Festival'
GROUP BY e.year
ORDER BY e.year asc;

-- time 11843.560 ms --
create or replace view v_artist_maxcount as 
SELECT s.artist_name, max(p.play_count)
FROM millionsongs_songs_popularity p JOIN millionsongs_songs_summary s
ON s.song_id=p.song_id
GROUP BY s.artist_name
HAVING max(p.play_count)>1500
ORDER BY max(p.play_count) desc;

-- time 3081.866 ms--
create or replace view v_artist_term as 
SELECT t.term, count(s.artist_name)
FROM millionsongs_songs_summary s 
JOIN millionsongs_artists a ON s.artist_id=a.artist_id 
JOIN millionsongs_artist_term t ON a.artist_id=t.artist_id
GROUP BY t.term
ORDER BY count(s.artist_name) desc;

--time 1022.032 ms--
create or replace view v_pop_country as 
SELECT mba.name, count(mbart.name)
FROM mb_area mba 
JOIN mb_artist mbart ON mbart.area=mba.area_id
JOIN discog_artists da ON da.artist_id=mbart.artist_id
JOIN discog_releases_artists dra ON dra.artist_id=da.artist_id
JOIN discog_releases dr ON dr.release_id=dra.release_id
JOIN discog_releases_genres drg ON drg.release_id=dr.release_id
JOIN discog_genres dg ON dg.genre_id=drg.genre_id
WHERE dg.genre_name ='Pop' 
GROUP BY mba.name
HAVING count(mbart.name)>300
ORDER BY count(mbart.name) desc;



