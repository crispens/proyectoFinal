const bd = require('./bd');


const create = (table, obj) => bd(table).insert(obj);
const modify = (table, id, obj) => bd(table).where({id}).update(obj);


module.exports = {create, modify};