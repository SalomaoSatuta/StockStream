
import { SetStateAction, useEffect, useState } from 'react';
import { useRouter } from 'next/router';

export default function Login (){
    
    const [username, setUsername] = useState(''); // Estado para o nome de usuário
    const [password, setPassword] = useState(''); // Estado para a senha
    const router = useRouter();

    const handleUsernameChange = (event: { target: { value: SetStateAction<string>; }; }) => {
        setUsername(event.target.value);
    };

    const handlePasswordChange = (event: { target: { value: SetStateAction<string>; }; }) => {
        setPassword(event.target.value);
    };

    //Login Function
    const login = async (e: { preventDefault: () => void; }) => {

        e.preventDefault();

        //Prepares th Object do be submited
        var funcionario = {
            usuario:username,
            senha:password
        }  
        
        //Starts the whole POST action
        try {
          const response = await fetch('https://localhost:44344/api/funcionario/login', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify(funcionario),
          });
    
          if (response.ok) {

            const data = await response.json();

            router.push('/patrimonio/main');

            // if(data.perfilId == 1){

            // }

            localStorage.setItem('Id',data.id);
            console.log(data)

          } else {

            console.log('Falha na solicitação POST')

          }
        } catch (error) {

          console.log('Erro na solicitação POST')

        }

    };

    
    return (
        <>
            <div>
                <input 
                    type="text" 
                    placeholder="Nome de Usuário ou Telefone" 
                    value={username}
                    onChange={handleUsernameChange}
                /> 
                <input 
                    type="password" 
                    placeholder="Palavra-passe" 
                    value={password}
                    onChange={handlePasswordChange}
                /> 
                <button onClick={login} type="submit">Iniciar Sessão</button>
            </div>    
        </>
    )
}