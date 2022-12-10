--Add column source_data(summary json) to table sport_summary
ALTER TABLE sport_summary ADD COLUMN source_data TEXT;

--Add columns to table sport_summary&sport_detail
ALTER TABLE sport_summary ADD COLUMN parent_trackid INTEGER;

ALTER TABLE sport_detail ADD COLUMN delta_time_altitude TEXT;
ALTER TABLE sport_detail ADD COLUMN stroke_speed TEXT;
ALTER TABLE sport_detail ADD COLUMN cadence TEXT;
ALTER TABLE sport_detail ADD COLUMN performance_status TEXT;
ALTER TABLE sport_detail ADD COLUMN lap TEXT;
ALTER TABLE sport_detail ADD COLUMN speed TEXT;
