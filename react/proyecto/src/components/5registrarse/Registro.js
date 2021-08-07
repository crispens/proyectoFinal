import React from 'react';
import useCustomForm from '../../utils/useCustomForm';
import { useForm } from 'react-hook-form';
import { yupResolver } from '@hookform/resolvers/yup';
import * as yup from 'yup';


const schema = yup.object().shape({
    nombre: yup.string().required("El nombre es obligatorio").min(3, "Minimo 3 caracteres").max(30, "No puede contener mas de 30 caracteres"),
    apellido: yup.string().required("El apellido es obligatorio").max(30, "No puede contener mas de 30 caracteres"),
    mail: yup.string().email("Ingrese una direccion de mail valida").required("Mail es obligatorio"),
})

const Registro = () => {
    const [values, handlerInput] = useCustomForm();
    
    const { register, handleSubmit, formState: { errors } } = useForm({
        resolver: yupResolver(schema)
    });
    const registrado = () => {
        console.log("Registrado 👍👏👏", values);
    }
    return (
        <>
        <div className="row justify-content-center mt-4">
            <div className="col-7">
                <form onSubmit={handleSubmit(registrado)}>
                    <div className="form-group mt-2">
                        <input {...register("nombre")} type="text" name="nombre" placeholder="Ingrese su nombre" className="form-control" onChange={handlerInput} />
                        {errors.nombre ? <p className="text-danger">{errors.nombre.message}</p> : null}
                    </div>

                    <div className="form-group mt-2">
                        <input {...register("apellido")} type="text" name="apellido" placeholder="Ingrese su apellido" className="form-control" onChange={handlerInput} />
                        {errors.apellido ? <p className="text-danger">{errors.apellido.message}</p> : null}
                    </div>

                    <div className="form-group mt-2">
                        <input {...register("mail")} type="mail" name="mail" placeholder="Ingrese su mail" className="form-control" onChange={handlerInput} />
                        {errors.mail ? <p className="text-danger">{errors.mail.message}</p> : null}
                    </div>

                    <div className="d-grid gap-2 mt-2">
                        <button className="btn btn-info">Registrarse</button>
                    </div>
                </form>
            </div>
        </div>
        </>
    );
}


export default Registro;