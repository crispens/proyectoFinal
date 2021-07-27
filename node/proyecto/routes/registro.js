const express = require('express');
const router = express.Router();
const model = require('../models/usuarios');
const sha1 = require('sha1');
const {v4 : uuid} = require('uuid');
const {validateCreate} = require('../middlewares/usuarios');
const { send } = require('../services/mail');

const create = async (req, res) => {
    try {    
        const {usuario, contraseña, mail} = req.body; 
        const nuevo = {
        usuario, 
        contraseña : sha1(contraseña),
        mail,
        confirmacionCorreo : uuid()
    };
        
        const newUser = await model.create(nuevo);
        const mailinfo = {
            to: mail,
            subject: "Gracias por registrarte 🎉😀!!",
            html: `<a href = "${process.env.URL}/users/verify/${nuevo.confirmacionCorreo}" >Link magico de registro para ${usuario}</a>`
        }
        const mensaje = await send(mailinfo);
        res.json(mensaje);
    }
    catch (err) {
        console.error(err);
        res.status(500);
    }
}


router.post('/',validateCreate, create);


module.exports = router;