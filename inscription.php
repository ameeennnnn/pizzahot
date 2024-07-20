<?php
mysql_connect("localhost","root","");
mysql_select_db("bd123");
$nom=$_POST["nom"];
$prenom=$_POST["prenom"];
$tel=$_POST["tel"];
$adr=$_POST["adr"];
$mtp=$_POST["mtp"];
$cmtp=$_POST["cmtp"];
$req="select* from client where tel='$tel' ";
$res=mysql_query($req);
if(mysql_num_rows($res)==0){
    $req1="insert into client values ('$tel','$nom','$prenom','$adr','$mtp')";
    $res1=mysql_query($req1);
    echo"effectuer avec succes";
}
else{$req2="select* from client where tel='$tel' and nomcl='$nom' and prenom='$prenom'";
    $res2=mysql_query($req2);
    if(mysql_num_rows($res2)!=0){
        echo"client deja inscrit";
    }
}

?>