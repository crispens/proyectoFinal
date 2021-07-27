const fs = require('fs');
const publicKey = fs.readFileSync('./keys/public.pem');
const JWT = require('jsonwebtoken');


const logeado = (req, res, next) => {
    try {
        const {authorization} = req.headers;
        const {id} = JWT.verify(authorization, publicKey);
        req.id = id;
        next();
    }
    catch (error) {
        console.log(error);
        res.sendStatus(500);
    }
}


module.exports = {logeado};