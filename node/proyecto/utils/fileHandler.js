const {v4 : uuid} = require('uuid');
const fs = require('fs');
const allowImgExtension = ["jpg","jpeg" ,"png"];


const saveFile = (file, allowExtension , destFolder = "./public/images") => {
    try {
    const [type, ext] = file[0].mimetype.split("/");
    if (!allowExtension.includes(ext)) throw "Formato no permitido";
    const uid = uuid();
    const nombre = `${uid}.${ext}`;
    const dir = `${destFolder}/${nombre}`;
    fs.createReadStream(file[0].path).pipe(fs.createWriteStream(dir));
    fs.unlink(file[0].path, (e) => {
        if(e){
            throw "No se puede eliminar";
        }
    });
    return uid; 
    }
    catch(e) {
    throw e;
    }
}

const imgFile = (file) => {
    return saveFile(file, allowImgExtension);
}

const pdfFile = () => {}


module.exports = {imgFile};