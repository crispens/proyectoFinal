const bd = require('../utils/bd');

const getAll = () => bd('categorias').select('nombre');




module.exports = {getAll};