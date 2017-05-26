CREATE TABLE Release_Label ( -- replicate (verbose)
    release_label_id                  INTEGER,
    release_id             INTEGER NOT NULL, -- references release.id
    label_id               INTEGER, -- references label.id
    catalog_number      VARCHAR(255),
    last_updated        TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);