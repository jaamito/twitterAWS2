<?php
session_start();
//Loguin
$_SESSION["pass"] = '';
$_SESSION["usuario"] = '';
//Registra
?>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Twittar Aws2</title>
      <link rel="stylesheet" href="css/style.css">
</head>
<body>
<FORM action="" method='post'>
  <div class="inner-container">
    <div class="box">
      <h1>Login</h1>
      <input type="text" placeholder="Usuario" name="usuario"/>

     	<input type="password" placeholder="Contraseña" name="pass"/>

      <button id="mysubmit" type="submit">Loguear</button>

      <p>No eres miembro? <a href="registrar.php"><span>Registrate</span></a></p>
    </div>
  </div>
  </FORM>
  <?php
  //TODO ESTO VA EN EL ARCHIVO PAGINA PRINCIPAL
		if(isset($_POST["usuario"])){
			$_SESSION["usuario"] = $_POST["usuario"];
		}
		if(isset($_POST["pass"])){
			$_SESSION["pass"] = $_POST["pass"];
		}
    try{
        $hostname = "localhost";
        $dbname = "twitter";
        $username = "root";
        $pw = "blearuto18";
        $pdo = new PDO ("mysql:host=$hostname;dbname=$dbname","$username","$pw");
        } catch (PDOException $e) {
          echo "Failed to get DB handle: " . $e->getMessage() . "\n";
        exit;
        }
        $tipo1 = 0;
        $tipo2 = 0;

        $query = $pdo->prepare("SELECT * FROM usuarios  where nomUsuario ="."'".$_SESSION["usuario"]."'");
        $query->execute();

        $e= $query->errorInfo();
        if ($e[0]!='00000') {
          echo "\nPDO::errorInfo():\n";
           die("Error accedint a dades: " . $e[2]);
        }
        $row = $query->fetch();

        if($_SESSION["usuario"] == $row["nomUsuario"]){
     		$tipo1 = 1;
     	}

     	$queryx = $pdo->prepare("SELECT * FROM usuarios  where contrasena ="."'".$_SESSION["pass"]."'");
        $queryx->execute();

        $a= $queryx->errorInfo();
        if ($a[0]!='00000') {
          echo "\nPDO::errorInfo():\n";
           die("Error accedint a dades: " . $a[2]);
        }
        $ros = $queryx->fetch();
      
     	if($_SESSION["pass"] == $ros["contrasena"]){
     		$tipo2 = 1;
     	}
     	
 		if($tipo1 == 1 && $tipo2 == 1){
 		header("Location: principal.php");

 		}else{
 		header("Location: logerr1.php");

 		}
        unset($pdo); 
  		unset($query);
  		unset($queryx);
		?>
</body>
</html>
