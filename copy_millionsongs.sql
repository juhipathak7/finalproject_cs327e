set search_path= millionsongs;

copy Artists from
's3://cs327e-final-project-datasets/million-songs-csv/artists.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Artist_Term from
's3://cs327e-final-project-datasets/million-songs-csv/artist_term.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Songs_Popularity from
's3://cs327e-final-project-datasets/million-songs-csv/songs_popularity.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Songs_Summary from
's3://cs327e-final-project-datasets/million-songs-csv/songs_summary.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Tracks from
's3://cs327e-final-project-datasets/million-songs-csv/tracks.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Words from
's3://cs327e-final-project-datasets/million-songs-csv/words.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;

copy Lyrics from
's3://cs327e-final-project-datasets/million-songs-csv/lyrics.csv'
iam_role 'arn:aws:iam::943810861521:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;