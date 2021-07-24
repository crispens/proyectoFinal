const Joi = require('@hapi/joi');


const schemas = {
    create: Joi.object().keys({
        usuario: Joi.string().required(),
        contraseña: Joi.string().min(8).required().messages({
            "string.min" : "La contraseña debe tener al menor 8 caracteres"
        }),
        mail: Joi.string().email({ tlds: { allow: false} }).required(),
    }),

    modify : Joi.object().keys({
        id: Joi.number().integer().required(),
        usuario: Joi.string().optional(),
        contraseña: Joi.string().min(8).optional().messages({
            "string.min" : "La contraseña debe tener al menor 8 caracteres"
        }),
        mail: Joi.string().email({ tlds: { allow: false} }).optional(),
    }),
}


module.exports = schemas;