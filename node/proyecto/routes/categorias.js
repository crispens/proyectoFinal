const express = require('express');
const { validateCreate, validateModify } = require('../middlewares/categorias');
const router = express.Router();
const model = require('../models/categorias');


const all = (req, res) => {
    model.getAll().then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};

const single = (req, res) => {
   model.single(req.params.id).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};

const create = (req, res) => {
    model.create(req.body).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};

const modify = (req, res) => {
    model.modify(req.params.id, req.body).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
}


router.get('/all', all);
router.get('/single/:id', single);
router.post('/new', validateCreate, create);
router.put('/modify/:id', validateModify, modify);


module.exports = router;