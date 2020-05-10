const Pool = require('pg').Pool;
const GeoJSON = require('geojson');

const config = require('../config.js');
const { db: { user, host, database, password, port } } =  config ;

const pool = new Pool({
    user : user,
    host: host, 
    database: database, 
    password: password,
    port: port
});

const getGeoJsonSitiosInteres = (request, response, next) => 
{
    let type = (request.params['tipo']);
    let queryLayer="";
    
    if(typeof type !='undefined')
    {
        queryLayer = `SELECT gid, st_x(st_centroid(the_geom)) as lon, 
        st_y(st_centroid(the_geom)) as lat, name, type 
        FROM sitiosinteres_univalle WHERE type in ('${type}') ;`;
    }else
    {
        queryLayer = `SELECT gid, st_x(st_centroid(the_geom)) as lon, 
        st_y(st_centroid(the_geom)) as lat, name, type 
        FROM sitiosinteres_univalle;`;
    }
    
    console.log(queryLayer);
    pool.query( queryLayer, (err, res ) => 
    {
        if(err)
        {
            return console.error('SQL Query Error !');
        }
        let geojson = GeoJSON.parse(res.rows, {Point:['lat', 'lon' ]})
        response.json(geojson);
    })
}

const getGeoJsonEdificios = (request, response, next) => 
{
    let queryLayer = `SELECT row_to_json(fc) as geojson
    FROM ( SELECT 'FeatureCollection' As type, array_to_json(array_agg(f)) As features
    FROM (SELECT 'Feature' As type
       , ST_AsGeoJSON(lg.the_geom)::json As geometry
       , row_to_json((SELECT l FROM (SELECT name ) As l
         )) As properties
      FROM edificios_univalle As lg   ) As f )  As fc;`;

    pool.query( queryLayer, (err, res ) => 
    {
        if(err)
        {
            return console.error('SQL Query Error !');
        }
        response.json(res.rows[0].geojson);
    })
}

module.exports = { getGeoJsonSitiosInteres , getGeoJsonEdificios }