const express = require('express');

const router = express.Router();

const layer = require('../controllers/layerController.js');

router.get('/layers/edificios',  layer.getGeoJsonEdificios);

router.get('/layers/sitios', layer.getGeoJsonSitiosInteres);
//sitios_interes per type
router.get('/layers/sitios/:tipo', layer.getGeoJsonSitiosInteres);

module.exports = router;