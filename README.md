# geo-mysql
mysql geo function to achieve latitude and longitude analysis city

- city_geo_gcj02.sql 

    `mysql table structure`

- geojson.php 

    `php executable file`

- sql 

    `sql data generated by php. All.sql is all data, and the other data is the data of each province`

The json files required for the script are in the [geo-data-TopoJSON](https://github.com/chaiyuan-oss/geo-data-TopoJSON) project


You need to get the json data, set the location of the json data, set the output directory and then execute the PHP file

`console> php geojson.php`

If this table structure is what you need then you can start importing them into mysql


#### mysql Query Example

```
SELECT
	* 
FROM
	city_geo_gcj02 
WHERE
	ST_CONTAINS ( polygon, GeomFromText ( 'POINT(92.5794 31.48413)' ) ) =1
```
You can replace the coordinates of the POINT with the coordinates you want to query

I forgot to mention that the latitude and longitude standard is the gcj02 standard
