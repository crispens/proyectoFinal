import Head from "./components/1header/Head";
import Nav from "./components/2nav/Nav";
import Title from "./components/3title/Title";
import Registro from "./components/5registrarse/Registro";
import Productos from "./components/4productos/Productos";
import Footer from "./components/8footer/Footer";



const App = () => {
  return (
    <>
    <Head />
    <Nav />
    <Title />
    <Productos />
    <Registro />
    <Footer />
    </>
  );
}

export default App;