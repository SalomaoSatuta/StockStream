import Navbar from "@/components/structure/Navbar"
import Footer from "@/components/structure/Footer"
import "bootstrap/dist/css/bootstrap.min.css";
import Head from "next/head";


export default function Home(){
    
    return (
        <>
            <Head>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
            </Head>
         
            

            <div className="container-fluid">
                <div className="row">
                    <div className="col-md-2" style={{backgroundColor:'silver',height:'100vh'}}>
                        <div style={{backgroundColor:'red',height:'90vh'}}>
                                asdasdas
                        </div>
                        <div style={{backgroundColor:'green',height:'10vh'}}>
                                asdasdas
                        </div>
                    </div>
                    <div className="col-md-10">
                        <Navbar/>

                        <Footer/>
                    </div>
                </div>
            </div>
                


            
        </>
    )
}