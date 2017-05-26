We renamed a few files in the the different schemas:

Discog:

artists:
tist_id >> artist_id
name >> artist_name

genres:
name >> genre_name

labels:
name >> label_name




Millionsong:

song_popularity:
song >> song_id
userid >> user_id

tracks:
tid >> track_id



MusicBrainz:

gender:
id >> gender_id

area:
id >> area_id

artist_credit_name:
artist_credit >> artist_credit_id
artist >> artist_id

artist_credit:
artist_credit >> artist_credit_id

medium format:
id >> medium_format_id

track:
id >> track_id
medium >>medium_id
id >> recording_id
id >> artist_credit_id

recording:
id >> recording_id
artist_credit >> artist_credit_id

artist_alias:
id >> artist_alias_id
artist >> artist_id

artist_type:
id >> artist_type_id

artist:
id >> artist_id
artist_type >> artist_type_id
area >> area_id
gender >> gender_id

release:
id >> release_id
artist_credit >> artist_credit_id

release_label:
id >> release_label_id
release >> release_id
label >> label_id

event_type:
id >> event_type_id 
name >> type_name

event:
id >> event_id
name >> event_name
type >> event_type_id

instrument:
id >> instrument_id
type >> instrument_type_id

instrument_alias:
id >> instrument_alias_id
instrument >> instrument_id

label:
id >> label_id
type >> label_type

