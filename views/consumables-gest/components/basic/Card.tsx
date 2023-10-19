export default function Card(props: any){

    return (
        <>
            <div className="card border-0 shadow" style={{backgroundColor:props.background}}>
                <div className="card-body">
                    <div className="card-text">
                        <div>
                           <h5>{props.titulo}</h5>
                        </div>
                        <div className="mt-2">
                            <small className="text-muted font-weight-light">
                                Some quick example text to build on the 
                                card title and make up the bulk of 
                                the card's content.
                            </small>
                        </div>
                    </div>
                    <div className="row mt-3">
                        <div className="col-md-6">
                            <div>Total de Funcionários</div>
                            <div><h4>80</h4></div>
                        </div>
                        <div className="col-md-6">
                            <div>Total de Usuário</div>
                            <div><h4>06</h4></div>
                        </div>
                    </div>
                </div>
            </div>

        </>
    )

}