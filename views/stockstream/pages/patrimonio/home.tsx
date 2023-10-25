import "bootstrap/dist/css/bootstrap.min.css";
import Head from "next/head";
import Navbar from "../../components/master/Navbar";
import SideBar from "@/components/master/SideBar";

export default function (){
    return (
            <>
                <Head>
                    <meta name="keywords" content="HTML, CSS, JavaScript"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1" />
                    <link rel="preconnect" href="https://fonts.googleapis.com"/>
                    <link rel="preconnect" href="https://fonts.gstatic.com"/>
                    <link href="https://fonts.googleapis.com/css2?family=Lexend:wght@300&display=swap" rel="stylesheet"/>

                    <title>Home - Património</title>
                </Head>
                <div className="container-fluid">
                    <div className="row">
                        <div className="col-md-2 px-0">
                            <SideBar />
                        </div>
                        <div className="col-md-10">
                            <Navbar />
                        </div>
                    </div>
                </div>

            </>
        )
}