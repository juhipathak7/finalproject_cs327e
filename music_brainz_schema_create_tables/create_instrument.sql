CREATE TABLE Instrument ( -- replicate (verbose)
    instrument_id                  INTEGER, -- PK
    gid                 varchar(2500) NOT NULL,
    name                VARCHAR(2500) NOT NULL,
    instrument_type_id                INTEGER, -- references instrument_type.id
    edits_pending       INTEGER NOT NULL DEFAULT 0,
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    comment             VARCHAR(65000) NOT NULL DEFAULT '',
    description         VARCHAR(3000)
);