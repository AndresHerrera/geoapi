const express = require("express");
const app = express();

const layerRouter = require('./routers/api.js')

const port = 3000;

app.get('/', function(req,res)
{
    res.send('GeoAPI example is running !');
});

app.use('/api',layerRouter)

var server = app.listen(port, () => 
{
    var port = server.address().port;
    console.log(`GeoAPI running on http://localhost:${port}`);
});