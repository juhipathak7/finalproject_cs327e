CREATE TABLE Area ( -- replicate (verbose)
    area_id                  INTEGER, -- PK
    gid                 varchar(65000) NOT NULL,
    name                VARCHAR(6000) NOT NULL,
    type                INTEGER, -- references area_type.id
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        VARCHAR(2500),
    begin_date_year     SMALLINT,
    begin_date_month    SMALLINT,
    begin_date_day      SMALLINT,
    end_date_year       SMALLINT,
    end_date_month      SMALLINT,
    end_date_day        SMALLINT,
    ended               BOOLEAN NOT NULL DEFAULT FALSE,
    comment             VARCHAR(4000)
);