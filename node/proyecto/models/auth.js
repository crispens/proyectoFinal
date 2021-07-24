const bd = require('../utils/bd');


const isLogged = (usuario, contraseña) => bd("personas").where({usuario, contraseña}).select("id", "usuario", "habilitado");


module.exports = {isLogged};