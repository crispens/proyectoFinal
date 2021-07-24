const bd = require('../utils/bd');
const bdService = require('../utils/bdService');


const getAll = () => bd('usuarios').select('usuario', 'contraseña');

const single = (id) => bd('usuarios').where('id', id).select('usuario', 'contraseña');

const create = async (obj) => {
    try {
    const id = await bdService.create("usuarios", obj);
    return id;
    } 
    catch(e) {
        console.log(e);
    }
}

const modify = ({id = false, obj, confirmacionCorreo = false}) => bd("usuarios").where({id}).orWhere({confirmacionCorreo}).update(obj);
// UPDATE personas SET habilitado = true WHERE confirmacionCorreo = confirmacionCorreo (uuid) OR id = id


module.exports = {getAll, single, modify, create};