const express = require('express');
const router = express.Router();
const model = require('../models/categorias');


const all = (req, res) => {
    model.getAll().then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};






router.get('/all', all);


module.exports = router;