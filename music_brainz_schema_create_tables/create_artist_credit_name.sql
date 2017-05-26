CREATE TABLE Artist_Credit_Name ( -- replicate (verbose)
    artist_credit_id       INTEGER NOT NULL, -- PK, references artist_credit.id CASCADE
    position            SMALLINT NOT NULL, -- PK
    artist              INTEGER NOT NULL, -- references artist.id CASCADE
    name                VARCHAR(2500) NOT NULL,
    join_phrase         TEXT NOT NULL DEFAULT ''
);