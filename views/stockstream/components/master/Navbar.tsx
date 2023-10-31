export default function Navbar(){
    return (<>

        <nav className="navbar navbar-expand-lg navbar-light" style={{backgroundColor:'#203239'}}>
            <div className="container">
                <a className="navbar-brand" href="#">Navbar</a>
                <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div className="navbar-nav">
                        <a className="nav-item nav-link text-white" href="#">Home</a>
                        <a className="nav-item nav-link text-white" href="#">Features</a>
                        <a className="nav-item nav-link text-white" href="#">Pricing</a>
                        <a className="nav-item nav-link text-white" href="#">Disabled</a>
                    </div>
                </div>
            </div>
        </nav>
    
    </>)
}