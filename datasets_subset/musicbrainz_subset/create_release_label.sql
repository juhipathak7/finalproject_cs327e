CREATE TABLE release_label ( -- replicate (verbose)
    id                  SERIAL,
    release             INTEGER NOT NULL, -- references release.id
    label               INTEGER, -- references label.id
    catalog_number      VARCHAR(255),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);