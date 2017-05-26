drop schema if exists discog cascade;
create schema discog;
set search_path to discog; 

\dt
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_labels.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_releases.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_artists.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_genres.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_releases_labels.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_releases_artists.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_releases_formats.sql
\i /Users/juhipathak7/Desktop/team-f-jm/discogs_sql_stuff/create_releases_genres.sql

\dt