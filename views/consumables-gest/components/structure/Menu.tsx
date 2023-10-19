import Image from "next/image"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import { faChartBar, faUser, faMoon, faCalendar } from "@fortawesome/free-regular-svg-icons"

export default function Menu(){

    return (<>

        <div className="col-md-2 px-0" style={{height:'100vh', backgroundColor:'#45474B', color:'white'}}>
            <div style={{height:'95vh'}}>
                    <div className="row">

                        <div className="col-md-11 m-auto">
{/* 
                            <div>
                                <Image
                                src="/engine/images/logo/rendom-logo.png"
                                width={100}
                                height={100}
                                alt="Logotipo"
                                />
                            </div> */}

                            <ul>
                                <li>Menu Principal</li>
                                <li><FontAwesomeIcon icon={faChartBar} /> Dashboard</li>
                                <li><FontAwesomeIcon icon={faUser} /> Usuários</li>
                                <li><FontAwesomeIcon icon={faUser} />Minha Conta</li>
                                <li> Estatística</li>
                            </ul>

                            <ul>
                                <li>Administrativo</li>
                                <li>Fornecimentos</li>
                                <li>Fornecedores</li>
                                <li>Funcionário</li>
                                <li>Solicitação</li>
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