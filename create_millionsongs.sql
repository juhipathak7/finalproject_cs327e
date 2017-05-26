drop schema if exists millionsongs cascade;
create schema millionsongs;
set search_path to millionsongs;

\dt
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_artist_term.sql 
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_artists.sql 
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_lyrics.sql 
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_songs_popularity.sql 
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_songs_summary.sql 
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_tracks.sql 
\i /Users/juhipathak7/Desktop/team-f-jm/millionsongs_sql_stuff/create_words.sql 

\dt 

