# GeoAPI Example

RESTful API with Node.js to provide geographic data stored in PostgreSQL / PostGIS.

## Requirements

* Node.js
* A PostgreSQL/PostGIS database 

### Create PostgreSQL/PostGIS database

```
createdb -U postgres -p 5432 -h localhost -E UTF8 -e geoapi 

psql -U postgres -p 5432 -h localhost -d geoapi -c "CREATE EXTENSION postgis;"
```

### Upload sample data PostgreSQL/PostGIS database 

```
psql -U postgres -d geoapi -h localhost -p 5432 -f sql/edificios_univalle.sql

psql -U postgres -d geoapi -h localhost -p 5432 -f sql/sitiosinteres_univalle.sql
```

### GeoAPI Example
```
git clone https://github.com/AndresHerrera/geoapi.git 
cd geoapi
npm install
vim config.js
```
Update database credentials in ** config.js **  file 

```javascript
const config = {
    db: {
        host: 'host',
        user: 'user',
        password: 'password',
        database: 'database',
        port: 5432,
    }
};
```
### Run Server

```
node server.js 
```
#### Examples

Edificios (GeoJSON)

http://localhost:3000/api/layers/edificios

Todos los sitios de interes (GeoJSON)

http://localhost:3000/api/layers/sitios

Sitios de interes de tipo: ** bicycle_parking ** (GeoJSON)

http://localhost:3000/api/layers/sitios/bicycle_parking

Sitios de interes de tipo: ** restaurant ** (GeoJSON)

http://localhost:3000/api/layers/sitios/restaurant

Original Repo:
> https://github.com/sigdeletras/geoapi
