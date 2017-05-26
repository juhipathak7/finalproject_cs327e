CREATE TABLE Medium_Format ( -- replicate
    medium_format_id                  INTEGER,
    name                VARCHAR(4000) NOT NULL,
    parent              INTEGER, -- references medium_format.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    year                SMALLINT,
    has_discids         BOOLEAN NOT NULL DEFAULT FALSE,
    description         VARCHAR(65000),
    gid                 VARCHAR(65000) NOT NULL
);