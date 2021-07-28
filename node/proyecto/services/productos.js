const {create, createImagen} = require('../models/productos');
const {imgFile} = require('../utils/fileHandler');


const createProd = async (body, file) => {
    try {
    const [id_producto] = await create(body);
    const uid = imgFile(file);
    const obj = {
        id_producto,
        uid
    }
    const id = await createImagen(obj);
    return id;
    }
    catch (e) {
        throw e;
    }
}

 
module.exports = {createProd};