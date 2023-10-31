import Card from "../../components/form/Card";
import CardMin from "../../components/form/CardMin";

export default function Navbar(){
    return (<>
        <div className="container-fluid mt-4">
            <div className="card">
                <div className="card-header">
                    <div className="row">
                        <div className="col-md-10">
                            <h4>Olá</h4>
                        </div>
                        <div className="col-md-2">
                            <button>?</button>
                            <button>Update</button>
                            <button>Cosutmize App</button>
                        </div>
                    </div>
                </div>
                <div className="card-body">
                    <div className="row">
                        <div className="col-md-4 mt-4"><Card/></div>
                        <div className="col-md-4 mt-4"><Card/></div>
                        <div className="col-md-4 mt-4"><Card/></div>
                        <div className="col-md-4 mt-4"><Card/></div>
                        <div className="col-md-4 mt-4"><Card/></div>
                        <div className="col-md-4 mt-4"><Card/></div>
                    </div>
                </div>
                <div className="card-footer bg-transparent pb-4">
                    <div className="row">
                        <div className="col-md-3 mt-3"><CardMin/></div>
                        <div className="col-md-3 mt-3"><CardMin/></div>
                        <div className="col-md-3 mt-3"><CardMin/></div>
                        <div className="col-md-3 mt-3"><CardMin/></div>
                    </div>
                </div>
            </div>
        </div>
    </>)
}