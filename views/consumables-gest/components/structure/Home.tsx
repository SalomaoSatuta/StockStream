import "bootstrap/dist/css/bootstrap.min.css";
import "@fortawesome/fontawesome-free";
import Card from "../basic/Card";
import CardMin from "../basic/CardMin";

export default function Home(){
    
    return (
        <>
        
            <div className="row">
                <div className="col-md-4 pb-4">
                    <Card titulo="Cavalo" background="#FDEDEC" />
                </div>
                <div className="col-md-4 pb-4">
                    <Card titulo="Cavalo" background="#EAF2F8" />
                </div>
                <div className="col-md-4 pb-4">
                    <Card titulo="Cavalo" background="#EAFAF1" />
                </div>
                <div className="col-md-4 pb-4">
                    <Card titulo="Cavalo" background="#EAF2F8" />
                </div>
                <div className="col-md-4 pb-4">
                    <Card titulo="Cavalo" background="#EAFAF1" />
                </div>
                <div className="col-md-4 pb-4">
                    <Card titulo="Cavalo" background="#FDEDEC" />
                </div>
            </div>

            <div className="row">
                <div className="col-md-3">
                    <CardMin />
                </div>
                <div className="col-md-3">
                    <CardMin />
                </div>
                <div className="col-md-3">
                    <CardMin />
                </div>
                <div className="col-md-3">
                    <CardMin />
                </div>
            </div>
            
        </>
    )
}