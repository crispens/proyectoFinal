const bd = require('../utils/bd');
const bdService = require('../utils/dbService');


const getAll = () => bd('productos as P').join('categorias as CAT', 'CAT.id','P.id_categoria').where({'P.habilitado' : 1}).select('P.nombre', 'descripcion' ,'P.precio', 'CAT.nombre as nombreCategoria');

const single = (id) => bd('productos').where({'habilitado' : 1, id});

const create = (obj) => bdService.create('productos', obj);

const modify = (id, obj) => bdService.modify('productos', id, obj);


module.exports = {getAll, single, create, modify};