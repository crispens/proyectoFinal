const bd = require('../utils/bd');


const isLogged = (usuario, contraseña) => bd("usuarios").where({usuario, contraseña}).select("id", "usuario", "habilitado");


module.exports = {isLogged};