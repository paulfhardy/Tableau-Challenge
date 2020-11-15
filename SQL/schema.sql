DROP TABLE IF EXISTS OCT2020CitiBike;
CREATE TABLE IF NOT EXISTS OCT2020CitiBike(
   tripduration            INTEGER 
  ,starttime               TIMESTAMP 
  ,stoptime                TIMESTAMP
  ,start_station_id        INTEGER 
  ,start_station_name      VARCHAR(100)
  ,start_station_latitude  NUMERIC(12,8)
  ,start_station_longitude NUMERIC(12,8)
  ,end_station_id          INTEGER 
  ,end_station_name        VARCHAR(100)
  ,end_station_latitude    NUMERIC(12,8)
  ,end_station_longitude   NUMERIC(12,8)
  ,bikeid                  INTEGER 
  ,usertype                VARCHAR(10)
  ,birth_year              INTEGER 
  ,gender                  INTEGER 
);

DROP TABLE IF EXISTS All2020CitiBike;
CREATE TABLE IF NOT EXISTS All2020Citibike(
   tripduration            INTEGER 
  ,starttime               TIMESTAMP 
  ,stoptime                TIMESTAMP
  ,start_station_id        INTEGER 
  ,start_station_name      VARCHAR(100)
  ,start_station_latitude  NUMERIC(12,8)
  ,start_station_longitude NUMERIC(12,8)
  ,end_station_id          INTEGER 
  ,end_station_name        VARCHAR(100)
  ,end_station_latitude    NUMERIC(12,8)
  ,end_station_longitude   NUMERIC(12,8)
  ,bikeid                  INTEGER 
  ,usertype                VARCHAR(10)
  ,birth_year              INTEGER 
  ,gender                  INTEGER 
);

DROP TABLE IF EXISTS All2018CitiBike;
CREATE TABLE IF NOT EXISTS All2018Citibike(
   tripduration            INTEGER 
  ,starttime               TIMESTAMP 
  ,stoptime                TIMESTAMP
  ,start_station_id        VARCHAR(10) 
  ,start_station_name      VARCHAR(100)
  ,start_station_latitude  NUMERIC(12,8)
  ,start_station_longitude NUMERIC(12,8)
  ,end_station_id          VARCHAR(10) 
  ,end_station_name        VARCHAR(100)
  ,end_station_latitude    NUMERIC(12,8)
  ,end_station_longitude   NUMERIC(12,8)
  ,bikeid                  INTEGER 
  ,usertype                VARCHAR(10)
  ,birth_year              INTEGER 
  ,gender                  INTEGER 
);