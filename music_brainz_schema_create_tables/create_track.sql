CREATE TABLE Track ( -- replicate (verbose)
    track_id                 INTEGER,
    gid                 VARCHAR(2500) NOT NULL,
    recording_id           INTEGER NOT NULL, -- references recording.id
    medium_id              INTEGER NOT NULL, -- references medium.id
    position            INTEGER NOT NULL,
    number              TEXT NOT NULL,
    name                VARCHAR(2500) NOT NULL,
    artist_credit_id       INTEGER NOT NULL, -- references artist_credit.id
    length              INTEGER,
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    is_data_track       BOOLEAN NOT NULL DEFAULT FALSE
);