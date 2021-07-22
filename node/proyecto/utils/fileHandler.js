const {v4 : uuid} = require('uuid'); // me genera un id unico ( nomnre de la imagen)
const fs = require('fs'); // file system maneja archivo dentro de la PC
const allowImgExtension = ["jpg","jpeg" ,"png"];


const saveFile = (file, allowExtension , destFolder = "./public/images") => {
    try {
    const [type, ext] = file[0].mimetype.split("/"); //[image, jpg]
    if (!allowExtension.includes(ext)) throw "Formato no permitido";
    const uid = uuid();
    const nombre = `${uid}.${ext}`;
    const dir = `${destFolder}/${nombre}`; // ./public/images/sjkhfsafnasnfnanfnanf.png
    fs.createReadStream(file[0].path).pipe(fs.createWriteStream(dir));
    fs.unlink(file[0].path, (e) => {
        if(e){
            throw "No se puede eliminar";
        }
    });
    // unlink me borra el archivo temporal creado
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