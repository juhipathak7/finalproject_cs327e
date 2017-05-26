CREATE TABLE Recording ( -- replicate (verbose)
    recording_id                  INTEGER,
    gid                 varchar(2500) NOT NULL,
    name                VARCHAR(2500) NOT NULL,
    artist_credit_id       INTEGER NOT NULL, -- references artist_credit.id
    length              INTEGER,
    comment             VARCHAR(2500) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    video               BOOLEAN NOT NULL DEFAULT FALSE
);