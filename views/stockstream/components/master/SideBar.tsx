import '../../styles/sidebar.modules.css';

export default function Sidebar(){
    return (
        <>
            <div className="sidebar pt-4">

                <div className='text-center'>
                    <img src='https://placehold.co/100x100' className='img-thumbnail' />
                </div>

                <div className='upside'>

                    <div className='row mt-3 menuListDiv'>
                        <div className='col-md-10 m-auto'>
                            
                            <ul className='myList'>
                                <li>Resumo</li>
                                <li className='mt-2'>Dashboard</li>
                                <li>Perfil</li>
                                <li>Estatísticas</li>
                            </ul>

                            <ul className='myList'>
                                <li className='mt-3'>Gestão de Stock</li>
                                <li className='mt-2'>Funcionários</li>
                                <li>Solicitações</li>
                                <li>Fornecimentos</li>
                                <li>Produtos</li>
                                <li>Fornecedores</li>
                            </ul>


                        </div>
                    </div>

                </div>

            </div>
        </>
    )
}