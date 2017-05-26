---Q1: What are the names of female artists who have released electronic tracks and how many tracks have they each released---

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

--Q2: How many tracks were released on 7'' vinyl for each genre?

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



---Q3: How many electronic releases has each Colombian artist (who was produced electronic songs) produced?
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


---Q4: How many pop releases does each type of artist have?---

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

---Q5: How many classical releases does each label have?--

SELECT l.name, COUNT(*) FROM discog_releases d
JOIN mb_release m on d.title=m.name
JOIN discog_releases_genres g on d.release_id=g.release_id
JOIN discog_genres e on g.genre_id=e.genre_id
JOIN mb_release_label rl on m.release_id=rl.release_id
JOIN mb_label l on l.label_id=rl.label_id
WHERE e.genre_name= 'Classical'
GROUP BY l.name
ORDER BY COUNT desc;


---Q6: List the number of aliases that each "Group" has?---

SELECT mba.name, count(mbaa.name)
FROM mb_artist mba
JOIN mb_artist_alias mbaa ON mbaa.artist_id=mba.artist_id
JOIN mb_artist_type mbat ON mbat.artist_type_id=mba.artist_type_id
WHERE mbat.name='Group'
GROUP BY mba.name
ORDER BY count(mbaa.name) desc;


---Q7: How many aliases does each instrument have out of the instruments that have more than 15 aliases ?---

SElECT mbi.name, count(mbia.name)
FROM mb_instrument mbi
JOIN mb_instrument_alias mbia ON mbi.instrument_id=mbia.instrument_id
GROUP BY mbi.name
HAVING count(mbia.name)>15
ORDER BY count(mbia.name) desc;


---Q8: How many festivals happened in each year between the 1995 and 2010?---

SELECT e.year, COUNT(*)
FROM mb_event e 
JOIN mb_event_type et ON e.event_type_id=et.event_type_id
WHERE CAST(e.year as int)<=2010 and CAST(e.year as int)>=1995 and et.type_name='Festival'
GROUP BY e.year
ORDER BY e.year asc;


---Q9: What's the maximum number of times somebody has played a song by each artist (songs played more than 1500 times)?----

SELECT s.artist_name, max(p.play_count)
FROM millionsongs_songs_popularity p JOIN millionsongs_songs_summary s
ON s.song_id=p.song_id
GROUP BY s.artist_name
HAVING max(p.play_count)>1500
ORDER BY max(p.play_count) desc;


---Q10: For each genre/term how many artist are there? --
SELECT t.term, count(s.artist_name)
FROM millionsongs_songs_summary s 
JOIN millionsongs_artists a ON s.artist_id=a.artist_id 
JOIN millionsongs_artist_term t ON a.artist_id=t.artist_id
GROUP BY t.term
ORDER BY count(s.artist_name) desc;

---Q11: How many Jazz artists come from each country that has more than 300 Pop artists? ---
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



