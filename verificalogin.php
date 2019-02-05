<?php
//pegar dados da tela 
	$login = $_POST["login"];
	$senha = md5($_POST["senha"]); /* colocamos md5 antes do $_POST para senhas criptografadas */

//abrir a conexão de banco.

	include_once 'conexao.php';

// montar a instrução de consulta, verifico se existe o login e a senha no banco 

	$sql = "select * from usuario where login = '".$login."' and senha ='".$senha."'";

	$result = mysqli_query($conexao,$sql);

	if(mysqli_num_rows($result)==1){
	echo "Logado!";
	}else{
		$msg = "Nenhum Cliente encontrado!";
		header("location:index.html"); //redireciona para a pagina html
	}

?>