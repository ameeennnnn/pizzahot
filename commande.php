<?php
mysql_connect("localhost","root","");
mysql_select_db("bd123");
$liste=$_POST["liste"];
$qte=$_POST["qte"];
$tel=$_POST["tel"];
$mtp=$_POST["mtp"];
$req="select* from client where tel='$tel' and mot='$mtp' ";
$res=mysql_query($req);echo(mysql_error());
if(mysql_num_rows($res)==0){
    echo"tel erronee ou mot de passe";
}
else{
    $d=date("Y-m-d H:i:s");
    $req2="insert into commande values('$liste','$tel','$d','$qte')";
    $res2=mysql_query($req2);
    echo"operation valideeeeeeeeee";
}















?>