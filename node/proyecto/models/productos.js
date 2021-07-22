const bd = require('../utils/bd');


const getAll = () => bd('productos as P').join('categorias as CAT', 'CAT.id','P.id_categoria').where({'P.habilitado' : 1}).select('P.nombre', 'descripcion' ,'P.precio', 'CAT.nombre as nombreCategoria');

const single = (id) => bd('productos').where({'habilitado' : 1, id});

const create = (obj) => bd('productos').insert(obj);

const modify = (id, obj) => bd('productos').where({id}).update(obj)



module.exports = {getAll, single, create, modify};