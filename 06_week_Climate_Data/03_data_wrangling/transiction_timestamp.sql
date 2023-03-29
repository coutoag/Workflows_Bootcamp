SELECT transaction_timestamp();

BEGIN;

DROP TABLE IF EXISTS mean_temperature CASCADE;

CREATE TABLE mean_temperature (
    staid INT,
    date DATE,
    tg INT
);

\COPY mean_temperature FROM '../data/mean_temperature.csv'  WITH (HEADER false, FORMAT csv);

COMMIT;

SELECT transaction_timestamp();


