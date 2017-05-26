set search_path= musicbrainz;

copy Artist_Alias from
's3://cs327e-final-project-datasets/music-brainz-csv/artist_alias.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Artist_Credit from
's3://cs327e-final-project-datasets/music-brainz-csv/artist_credit.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Artist_Type from
's3://cs327e-final-project-datasets/music-brainz-csv/artist_type.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy Artist from
's3://cs327e-final-project-datasets/music-brainz-csv/artist.csv'			
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;


copy Event_Type from
's3://cs327e-final-project-datasets/music-brainz-csv/event_type.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Artist_Credit_Name from
's3://cs327e-final-project-datasets/music-brainz-csv/artist_credit_name.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Event from
's3://cs327e-final-project-datasets/music-brainz-csv/event.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Gender from
's3://cs327e-final-project-datasets/music-brainz-csv/gender.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Area from
's3://cs327e-final-project-datasets/music-brainz-csv/area.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Instrument from
's3://cs327e-final-project-datasets/music-brainz-csv/instrument.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Instrument_Alias from
's3://cs327e-final-project-datasets/music-brainz-csv/instrument_alias.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Label from
's3://cs327e-final-project-datasets/music-brainz-csv/label.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Medium_Format from
's3://cs327e-final-project-datasets/music-brainz-csv/medium_format.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Medium from
's3://cs327e-final-project-datasets/music-brainz-csv/medium.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Recording from
's3://cs327e-final-project-datasets/music-brainz-csv/recording.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Release_Label from
's3://cs327e-final-project-datasets/music-brainz-csv/release_label.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Release from
's3://cs327e-final-project-datasets/music-brainz-csv/release.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Track from
's3://cs327e-final-project-datasets/music-brainz-csv/track.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;