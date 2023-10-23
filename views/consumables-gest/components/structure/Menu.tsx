import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import { faChartBar, faUser, faMoon, faCalendar } from "@fortawesome/free-regular-svg-icons"

export default function Menu(){

    return (<>

        <div className="col-md-2 px-0" style={{height:'100vh', backgroundColor:'#45474B', color:'white'}}>
            <div style={{height:'95vh'}}>
                    <div className="row">

                        <div className="col-md-11 m-auto">

                            <div className="text-center my-4">
                                <img src="https://via.placeholder.com/100" />
                            </div>

                            <ul className="list-group myList">

                                <li className="list-group-item mb-2">Menu Principal</li>

                                <li className="list-group-item"><FontAwesomeIcon icon={faChartBar} /> Dashboard</li>
                                <li className="list-group-item"><FontAwesomeIcon icon={faUser} /> Usuários</li>
                                <li className="list-group-item"><FontAwesomeIcon icon={faUser} />Minha Conta</li>
                                <li className="list-group-item">Estatística</li>

                            </ul>

                            <ul className="list-group mt-3">

                                <li className="list-group-item mb-2">Administrativo</li>

                                <li className="list-group-item"><FontAwesomeIcon icon={faChartBar} /> Fornecimentos</li>
                                <li className="list-group-item"><FontAwesomeIcon icon={faUser} /> Fornecedores</li>
                                <li className="list-group-item"><FontAwesomeIcon icon={faUser} />Funcionário</li>
                                <li className="list-group-item">Solicitação</li>

                            </ul>

                        </div>
                    </div>
            </div>
            <div style={{border:'1px solid silver',height:'5vh'}}>
                    asdasdas
            </div>
        </div>
    
    </>)

}