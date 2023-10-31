export default function Navbar(){
    return (<>
        <div className="card border-0 bg-info">
            <div className="card-body p-4">

                <div className="row">
                    <div className="col-md-3">
                        <img src='https://placehold.co/100x100' className='img-thumbnail' />
                    </div>
                    <div className="col-md-9">
                        <h5 className="">Workplace Setup</h5>
                        <small className="mb-2 text-muted">
                            Lorem Ipsum is simply dummy text of the printing and 
                            typesetting industry. Lorem Ipsum has been the industry's 
                            standard dummy
                        </small>
                    </div>
                </div>
                
                <div className="row mt-4">
                    <div className="col-md-6">
                        <h6>Total Buildings</h6>
                        <div><h3>20</h3></div>
                    </div>
                    <div className="col-md-6">
                        <h6>Total Branches</h6>
                        <div><h3>5</h3></div>
                    </div>
                </div>

            </div>
        </div>
    </>)
}