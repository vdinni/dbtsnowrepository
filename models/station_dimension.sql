WITH BIKE AS (

    SELECT
        distinct
        start_statio_id as STATION_ID,
        start_station_name as STATION_NAME,
        start_lat as STATION_LAT,
        start_lng as STATION_LNG
    FROM {{ source('demo', 'bike') }}

    WHERE RIDE_ID != 'ride_id'

    limit 10
)
SELECT * FROM BIKE