const Joi = require('@hapi/joi');


const schemas = {
    create: Joi.object().keys({
        nombre: Joi.string().required().messages({
            "any.required": "Nombre es obligatorio",
        }),
        descripcion: Joi.string().required(),
        precio: Joi.number().min(1).required(),
        id_categoria: Joi.number().integer().required(),
    }),
    modify: Joi.object().keys({
        id: Joi.number().integer().required(),
        nombre: Joi.string().optional(),
        descripcion: Joi.string().optional(),
        precio: Joi.number().min(1).optional(),
        id_categoria: Joi.number().integer().optional(),      
    })
}


module.exports = schemas;