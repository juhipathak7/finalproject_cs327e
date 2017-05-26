create table Songs_Summary(
   track_id varchar(20),
   title varchar(65000),
   song_id varchar(20),
   release varchar(3000),
   artist_id varchar(20),
   artist_mbid varchar(40),
   artist_name varchar(65000),
   duration decimal(9,3),
   artist_familiarity decimal(14,3),
   artist_hotttnesss decimal(14,3),
   year integer
);