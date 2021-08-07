import React from 'react';


const Footer = () => {
    return (
        <>
        <footer>
            <div className="row mt-3">
            <div className="col-12 col-md-3 fondoIconos">
                <ul className="list-unstyled list-inline foot-sm-links">
                    <h4><li style={{fontSize: 50}} className="mt-5"><a href="https://www.facebook.com/danielalejandro.crispens/" target="_blank"><i style={{fontSize: 80}} className="fa fa-facebook icono"></i>-Síguenos!</a></li></h4>

                    <h4><li style={{fontSize: 50}}><a href="https://www.instagram.com/danielcrispens/" target="_blank"><i style={{fontSize: 80}} className="fa fa-instagram icono"></i>-Síguenos!</a></li></h4>
                </ul>

                </div>
                <div className="col-12 col-md-6">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d732.431153122032!2d-62.03117427081881!3d-30.867047547698416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94351e6760828a29%3A0x7559bbc789e2195c!2sInt.%20Zampol%2C%20Brinkmann%2C%20C%C3%B3rdoba!5e1!3m2!1ses!2sar!4v1603337478076!5m2!1ses!2sar"  style={{width:"100%", height:250, frameborder:0, border:0, ariaHidden:"false", tabindex:0}}></iframe>

                </div>
                <div className="col-12 col-md-3">
                    
                    <h4 style={{fontSize: 40}} className="mt-5"><i className="fa fa-phone" style={{fontSize: 70, color: 'blue'}}></i>(3562)-455880</h4>

                    <h4 style={{fontSize: 40}} ><i className="fa fa-mobile" style={{fontSize: 70, color: 'blue'}}></i>(3562)-15506237</h4>

                </div>
            </div>

            <br /> <br /> <br />

            <div className="copyright">
                <div className=" row container3 bg-dark text-center">
                    <div className="pull-left mt-1 ">
                        <p style={{fontSize: 15, color: 'white'}}>www.frutasyverdurasmaricel.com.ar © Copyright © 2020 - Todos los derechos reservados</p>
                        <a style={{fontFamily:'arial', fontSize:15, color:'#eb7f14'}} href="https://www.instagram.com/danielcrispens/" target="_blank"><i className="fa fa-cogs"></i> Desarrollado por DanielCrispens</a>
                        
                        <br /><br /> 
                    </div>
                </div>
            </div>
        </footer>

        </>
    );
}
 
export default Footer;


