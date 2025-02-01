-- Create the mine_user table
/*CREATE TABLE mine_user (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Insert 100,000 dummy records efficiently
INSERT INTO mine_user (username, password, created_at)
SELECT 
    'user' || gs, 
    'password' || gs, 
    NOW() - (random() * INTERVAL '365 days') 
FROM generate_series(1, 100000) AS gs;
*/

/*select * from mine_user;*/

-- Create the table with 50 columns
/*
CREATE TABLE large_table (
    id SERIAL PRIMARY KEY,
    col1 TEXT,
    col2 TEXT,
    col3 TEXT,
    col4 TEXT,
    col5 TEXT,
    col6 INT,
    col7 INT,
    col8 INT,
    col9 INT,
    col10 INT,
    col11 BOOLEAN,
    col12 BOOLEAN,
    col13 BOOLEAN,
    col14 BOOLEAN,
    col15 BOOLEAN,
    col16 TEXT,
    col17 TEXT,
    col18 TEXT,
    col19 TEXT,
    col20 TEXT,
    col21 TIMESTAMP DEFAULT NOW(),
    col22 TIMESTAMP DEFAULT NOW(),
    col23 TIMESTAMP DEFAULT NOW(),
    col24 TIMESTAMP DEFAULT NOW(),
    col25 TIMESTAMP DEFAULT NOW(),
    col26 TEXT,
    col27 TEXT,
    col28 TEXT,
    col29 TEXT,
    col30 TEXT,
    col31 INT,
    col32 INT,
    col33 INT,
    col34 INT,
    col35 INT,
    col36 BOOLEAN,
    col37 BOOLEAN,
    col38 BOOLEAN,
    col39 BOOLEAN,
    col40 BOOLEAN,
    col41 TEXT,
    col42 TEXT,
    col43 TEXT,
    col44 TEXT,
    col45 TEXT,
    col46 TIMESTAMP DEFAULT NOW(),
    col47 TIMESTAMP DEFAULT NOW(),
    col48 TIMESTAMP DEFAULT NOW(),
    col49 TIMESTAMP DEFAULT NOW(),
    col50 TIMESTAMP DEFAULT NOW()
);

-- Insert 100,000 rows with dummy data
INSERT INTO large_table (
    col1, col2, col3, col4, col5, 
    col6, col7, col8, col9, col10, 
    col11, col12, col13, col14, col15,
    col16, col17, col18, col19, col20, 
    col21, col22, col23, col24, col25, 
    col26, col27, col28, col29, col30, 
    col31, col32, col33, col34, col35, 
    col36, col37, col38, col39, col40, 
    col41, col42, col43, col44, col45, 
    col46, col47, col48, col49, col50
)
SELECT 
    'text' || gs, 'text' || (gs + 1), 'text' || (gs + 2), 'text' || (gs + 3), 'text' || (gs + 4),
    gs % 100, (gs + 1) % 100, (gs + 2) % 100, (gs + 3) % 100, (gs + 4) % 100,
    gs % 2 = 0, (gs + 1) % 2 = 0, (gs + 2) % 2 = 0, (gs + 3) % 2 = 0, (gs + 4) % 2 = 0,
    'data' || gs, 'data' || (gs + 1), 'data' || (gs + 2), 'data' || (gs + 3), 'data' || (gs + 4),
    NOW() - (random() * INTERVAL '365 days'), NOW() - (random() * INTERVAL '365 days'),
    NOW() - (random() * INTERVAL '365 days'), NOW() - (random() * INTERVAL '365 days'),
    NOW() - (random() * INTERVAL '365 days'),
    'info' || gs, 'info' || (gs + 1), 'info' || (gs + 2), 'info' || (gs + 3), 'info' || (gs + 4),
    gs % 50, (gs + 1) % 50, (gs + 2) % 50, (gs + 3) % 50, (gs + 4) % 50,
    gs % 2 = 1, (gs + 1) % 2 = 1, (gs + 2) % 2 = 1, (gs + 3) % 2 = 1, (gs + 4) % 2 = 1,
    'extra' || gs, 'extra' || (gs + 1), 'extra' || (gs + 2), 'extra' || (gs + 3), 'extra' || (gs + 4),
    NOW() - (random() * INTERVAL '365 days'), NOW() - (random() * INTERVAL '365 days'),
    NOW() - (random() * INTERVAL '365 days'), NOW() - (random() * INTERVAL '365 days'),
    NOW() - (random() * INTERVAL '365 days')
FROM generate_series(1, 100000) AS gs;
*/
--select * from large_table;


/*
CREATE OR REPLACE FUNCTION generate_csv(table_name TEXT, file_path TEXT)
RETURNS VOID AS $$
DECLARE
    query TEXT;
BEGIN
    -- Construct the COPY command with headers
    query := format('COPY (SELECT * FROM %I) TO %L WITH CSV HEADER', table_name, file_path);

    -- Execute the COPY command
    EXECUTE query;

    RAISE NOTICE 'CSV file generated successfully at %', file_path;

EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Error generating CSV: %', SQLERRM;
END;
$$ LANGUAGE plpgsql;


*/


SELECT generate_csv('large_table', 'C:/temp/large_table.csv');

