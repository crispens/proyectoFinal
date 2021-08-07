import React from 'react';


const Nav = () => {
    return (
    <>
        <div className="row ">
          <div className="col-12 bg-dark">
            <nav className="navbar navbar-expand-lg navbar-dark" style={{fontSize: 20}}>
              <a className="navbar-brand offset-4" href="#link">INICIO</a>
              <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
              </button> 
              <div className="collapse navbar-collapse" id="navbarSupportedContent">
                <ul className="navbar-nav mr-auto">
                  <li className="nav-item dropdown">
                    <a className="nav-link dropdown-toggle" href="#link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      PRODUCTOS
                    </a>
                    <div className="dropdown-menu bg-dark" aria-labelledby="navbarDropdown">
                      <a className="dropdown-item" href="#link">FRUTAS</a>
                      <a className="dropdown-item" href="#link">VERDURAS</a>
                      </div>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#link">CONTACTO</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#link">SERVICIOS</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#link">INGRESAR</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#link">REGISTRARME</a>
                  </li>
                </ul>
              </div>
            </nav>          
          </div>
        </div>
    </>
    );
}
 

export default Nav;