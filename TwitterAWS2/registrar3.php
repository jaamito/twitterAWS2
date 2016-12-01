<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Twittar Aws2</title>
      <link rel="stylesheet" href="css/style.css">
</head>
<body>
<script type="text/javascript">
    alert("Este usuario ya esta registrado!!!");
</script>
<div align="right"><img src="css/trucha.png"></div> 
<FORM action="chek.php" method='post'>
  <div class="inner-container2">
    <div class="box">
      <h1>Registrate</h1>
      <input type="text" placeholder="Usuario" name="regusuario"/>
      <input type="password" placeholder="Contraseña" name="regpass"/>
      <input type="password" placeholder="Repite contraseña" name="repass"/>
      <input type="text" placeholder="Nombre" name="nombre"/>
      <input type="text" placeholder="Apellidos" name="apellido"/>
    </div>
  </div>
  <div class="inner-container3">
    <div class="box">
      <input type="text" placeholder="Email" name="mail"/>
      <input type="text" placeholder="Nacimiento ''dd/mm/aa''" name="nacimiento"/>
      <input type="text" placeholder="Sexo Male/Female" name="sexo"/>
      <input type="text" placeholder="Tlf" name="tlf"/>
      <button>Registrar</button>
      <p>Ya eres miembro? <a href="index.php"><span>Logueate</span></a></p>
    </div>
  </div>
</body>
</html>
