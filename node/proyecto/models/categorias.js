const bd = require('../utils/bd');
const bdService = require('../utils/bdService');


const getAll = () => bd('categorias').where({'habilitado' : 1}).select('nombre');

const single = (id) => bd('categorias').where({'habilitado' : 1, id}).select('nombre');

const create = (obj) => bdService.create('categorias', obj);

const modify = (id, obj) => bdService.modify('categorias', id, obj);

module.exports = { getAll, single, create, modify };