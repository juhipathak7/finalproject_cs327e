CREATE TABLE Gender ( -- replicate
    gender_id                  INTEGER,
    name                VARCHAR(255) NOT NULL,
    parent              INTEGER, -- references gender.id
    child_order         INTEGER NOT NULL DEFAULT 0,
    description         TEXT,
    gid                varchar(2500) NOT NULL
);