import React from 'react';


const Head = () => {
    return (
      <>
        <div className=" text-center text-uppercase">
          <div className="container ">
          <i className="fa fa-truck" style={{fontSize: 25}}></i>
          <span style={{fontSize: 20}}> Envío Sin cargo si tu compra supera los <big>$ 1000</big>.  </span>
          <a href="a" className="text-decoration:none" style={{fontSize: 20, color: "red"}} >Empezá a comprar ahora mismo!</a>
          </div>
        </div>
      </>
    );
}
 
export default Head;