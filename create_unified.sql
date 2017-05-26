drop schema if exists unified cascade;

create schema unified;

set search_path to unified;

create table unified.Discog_Releases as select release_id, ctitle as title, year as released, country from discog.releases; 

create table unified.Discog_Artists as select artist_id, cartist_name as artist_name from discog.artists; 

create table unified.Discog_Genres as select genre_id, cgenre_name as genre_name from discog.genres; 

create table unified.Discog_Releases_Genres as select release_id, genre_id from discog.releases_genres; 

create table unified.Discog_Releases_Artists as select artist_id, release_id  from discog.releases_artists; 

create table unified.Millionsongs_Songs_Summary as select ctitle as title, cartist_name as artist_name, artist_id, track_id, song_id from millionsongs.songs_summary;

create table unified.Millionsongs_Tracks as select track_id from millionsongs.tracks;

create table unified.Millionsongs_Lyrics as select track_id, word, count from millionsongs.lyrics; 

create table unified.Millionsongs_Songs_Popularity as select user_id, song_id, play_count from millionsongs.songs_popularity;

create table unified.Millionsongs_Artists as select artist_id from millionsongs.artists;

create table unified.Millionsongs_Artist_Term as select artist_id, term from millionsongs.artist_term;

create table unified.Mb_Gender as select gender_id, cname as name from musicbrainz.gender; 

create table unified.Mb_Artist as select artist_id, cname as name, artist_type_id, area, gender from musicbrainz.artist;

create table unified.Mb_Area as select area_id, cname as name from musicbrainz.area;

create table unified.Mb_Artist_Type as select artist_type_id, cname as name from musicbrainz.artist_type;

create table unified.Mb_Artist_Alias as select artist_alias_id, artist_id, cname as name from musicbrainz.artist_alias;

create table unified.Mb_Medium_Format as select medium_format_id, cname as name from musicbrainz.medium_format;

create table unified.Mb_Medium as select medium_id, release_id, medium_format_id from musicbrainz.medium;

create table unified.Mb_Release as select release_id, cname as name from musicbrainz.release;

create table unified.Mb_Release_Label as select release_label_id, release_id, label_id from musicbrainz.release_label;

create table unified.Mb_Label as select label_id, cname as name from musicbrainz.label;

create table unified.Mb_Instrument as select instrument_id, cname as name from musicbrainz.instrument;

create table unified.Mb_Instrument_Alias as select instrument_alias_id, instrument_id, cname as name from musicbrainz.instrument_alias;

create table unified.Mb_Event_Type as select event_type_id, ctype_name as type_name from musicbrainz.event_type;

create table unified.Mb_Event as select event_id, cevent_name, event_type_id, year from musicbrainz.event;



