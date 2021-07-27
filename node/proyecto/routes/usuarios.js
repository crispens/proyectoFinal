const express = require("express");
const router = express.Router();
const sha1 = require("sha1");
const model = require("../models/usuarios");
const {validateModify} = require("../middlewares/usuarios");


const get = (req, res) => {
    model.getAll().then((response) => res.json(response)).catch((err) => res.status(500).json(err));
}

const single = (req, res) => {
    model.single(req.params.id).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
}

const modify = (req, res) => {
    req.body.contraseña = sha1(req);
    model.modify(req.params.id, req.body).then((response) => res.json(response)).catch((err) => res.status(500).json(err));
}


router.get('/all', get);
router.get('/single/:id', single);
router.put('/modify/:id',validateModify, modify);


module.exports = router;