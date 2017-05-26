CREATE TABLE Artist_Type ( -- replicate
    artist_type_id                  INTEGER,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references artist_type.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                 VARCHAR(2500) NOT NULL
);