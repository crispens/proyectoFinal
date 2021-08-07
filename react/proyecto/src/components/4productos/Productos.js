import React from 'react';
import { useGet } from './../../utils/useHttp';


const Productos = () => {
    const [productos, error] = useGet({url : 'http://localhost:3456/productos/all'});
    console.log(productos);
    console.log(error);
    return (
        <>
            <div className="container">
                <div className="row justify-content-around">
                    {error ? (<h2>HUBO UN ERROR</h2>)
                    : productos.map((productos) => 
                        <div className="col-4 mt-4" key={productos.id}>
                            <div className="card">
                                <img src={productos.img} alt=""className="card-img-top"></img>
                                <div className="card-body">
                                    <h2 className="card-title text-center">{productos.nombre}</h2>
                                    <h5 className="card-text text-center">{productos.descripcion}</h5>
                                    <h5 className="card-text text-center">PRECIO: ${productos.precio}</h5>
                                    <h5 className="card-text text-center">CATEGORIA: {productos.id_categoria}</h5>
                                </div>
                            </div>
                        </div>
                    )}
                               
                </div>
            </div>
        </>
    );
};
 

export default Productos;