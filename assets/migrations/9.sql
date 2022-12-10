--Migrate table health_data to health_data_did
CREATE INDEX index_health_data_did_date on health_data_did (date, did);

INSERT INTO health_data_did (date, summary, synced, data, heart_rate_data, timezone)
SELECT date, summary, synced, data, heart_rate_data, timezone
FROM health_data;

DROP TABLE health_data;

--Migrate table heart_rate to heart_rate_did
CREATE INDEX index_heart_rate_did_timestamp on heart_rate_did (timestamp);

INSERT INTO heart_rate_did (timestamp, heart_rate)
SELECT timestamp, heart_rate
FROM heart_rate;

DROP TABLE heart_rate;
