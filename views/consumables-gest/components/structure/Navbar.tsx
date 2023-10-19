import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import { faEnvelope, faBell, faMoon, faCalendar } from "@fortawesome/free-regular-svg-icons"

export default function Navbar(){
    return (
        <>
           <div className="row py-2">
                <div className="col-md-2">

                    <button type="submit" className="rounded-circle btn border-0 mx-1" style={{backgroundColor:'#495E57', color:'white'}}>
                        <FontAwesomeIcon icon={faBell} />
                    </button>

                    <button type="submit" className="rounded-circle btn border-0 mx-1" style={{backgroundColor:'#495E57', color:'white'}}>
                        <FontAwesomeIcon icon={faEnvelope} />
                    </button>

                    <button type="submit" className="rounded-circle btn border-0 mx-1" style={{backgroundColor:'#495E57', color:'white'}}>
                        <FontAwesomeIcon icon={faMoon} />
                    </button>
                    
                    <button type="submit" className="rounded-circle btn border-0 mx-1" style={{backgroundColor:'#495E57', color:'white'}}>
                        <FontAwesomeIcon icon={faCalendar} />
                    </button>
                   

                </div>
           </div>
        </>
    )
}