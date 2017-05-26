drop schema if exists musicbrainz cascade;
create schema musicbrainz;
set search_path to musicbrainz; 

\dt
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_area.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_artist_alias.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_artist_credit_name.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_artist_credit.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_artist_type.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_artist.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_event_type.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_event.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_gender.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_instrument_alias.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_instrument.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_label.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_medium_format.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_medium.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_recording.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_release_label.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_release.sql
\i /Users/juhipathak7/Desktop/team-f-jm/music_brainz_sql_stuff/create_track.sql


\dt