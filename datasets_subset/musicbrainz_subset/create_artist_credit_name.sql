CREATE TABLE artist_credit_name ( -- replicate (verbose)
    artist_credit       INTEGER NOT NULL, -- PK, references artist_credit.id CASCADE
    position            SMALLINT NOT NULL, -- PK
    artist              INTEGER NOT NULL, -- references artist.id CASCADE
    name                VARCHAR NOT NULL,
    join_phrase         TEXT NOT NULL DEFAULT ''
);