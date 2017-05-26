CREATE TABLE Artist ( -- replicate (verbose)
    artist_id                  INTEGER,
    gid                 varchar(65000) NOT NULL,
    name                VARCHAR(65000) NOT NULL,
    sort_name           VARCHAR(65000) NOT NULL,
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    artist_type_id                INTEGER, -- references artist_type.id
    area                INTEGER, -- references area.id
    gender              INTEGER, -- references gender.id
    comment             VARCHAR(65000) NOT NULL DEFAULT '',
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    ended               BOOLEAN NOT NULL DEFAULT FALSE,
    begin_area          INTEGER,
    end_area            INTEGER 
);