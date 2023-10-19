import Home from "@/components/structure/Home"
import Navbar from "@/components/structure/Navbar"
import Footer from "@/components/structure/Footer"
import Menu from "@/components/structure/Menu"
import Head from "next/head"


export default function Main(){
    return (
        <>
           
            <Head>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
            </Head>
         
            <div className="container-fluid">
                <div className="row p-0">
                    <Menu />
                    <div className={'col-md-10 '} style={{backgroundColor:'#F5F7F8'}}>
                        <Navbar/>
                        <Home /> 
                        <Footer/>
                    </div>
                </div>
            </div>

        </>
    ) 

}