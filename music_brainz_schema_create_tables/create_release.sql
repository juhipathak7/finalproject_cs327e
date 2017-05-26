CREATE TABLE Release ( -- replicate (verbose)
    realease_id                  INTEGER,
    gid                 varchar(2500) NOT NULL,
    name                VARCHAR(2500) NOT NULL,
    artist_credit_id       INTEGER NOT NULL, -- references artist_credit.id
    release_group       INTEGER NOT NULL, -- references release_group.id
    status              INTEGER, -- references release_status.id
    packaging           INTEGER, -- references release_packaging.id
    language            INTEGER, -- references language.id
    script              INTEGER, -- references script.id
    barcode             VARCHAR(2500),
    comment             VARCHAR(65000) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    quality             SMALLINT NOT NULL DEFAULT -1,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);