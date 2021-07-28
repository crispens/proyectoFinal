const express = require('express');
const { validateCreate, validateModify } = require('../middlewares/productos');
const router = express.Router();
const model = require('../models/productos');
const multer = require('multer');
const config = { dest: "./public/tmp"};
const upload = multer(config);
const service = require('../services/productos');


const all = (req, res) => {
    model.getAll().then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};

const single = (req, res) => {
   model.single(req.params.id).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};

const create = (req, res) => {
    try {
        const idImg = service.createProd(req.body, req.files);
        res.json({idImg})
    } 
    catch (err) {
        res.sendStatus(500)
    }
};

const modify = (req, res) => {
    model.modify(req.params.id, req.body).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
};


router.get('/all', all);
router.get('/single/:id', single);
router.post('/new', upload.array("imagen"), validateCreate, create);
router.put('/modify/:id', validateModify, modify);


module.exports = router;