function lettre(ch){
    ch=ch.toUpperCase()
    i=0
    while(i<ch.length && ch.charAt(i)<"Z" && ch.charAt(i)>"A"){
        i++;
    }
    return i==ch.length
}





function verif(){
    nom=document.getElementById("nom").value;
    prenom=document.getElementById("prenom").value;
    adr=document.getElementById("adr").value;
    mtp=document.getElementById("mtp").value;
    tel=document.getElementById("tel").value;
    cmtp=document.getElementById("cmtp").value;

    if((!lettre(nom))||(nom.length<3)){
        alert("verif nom");return false;
    }
    if((!lettre(prenom))||(prenom.length<3)){
        alert("verif prenom");return false;
    }
    if((isNaN(tel)) ||(tel.length!=8) || (tel.charAt(0)<=1)){
        alert("verif tel");return false;
    }
    if(adr.length<10){
        alert("verif mail");return false;
    }
    if((mtp.length!=6) || (mtp.indexOf("")!=0)){
        alert("verif passe");return false;
    }
    if((cmtp==mtp)||(cmtp.length!=6) || (cmtp=="")){
        alert("verif confirmation");return false;
    }
}
function verif1(){
    liste=document.getElementById("liste").options.selectedIndex;
    if(liste<1){
        alert("selection oblg");return false;
    }
    qte=document.getElementById("qte").value;
    if((isNaN(qte)) ||(Number(qte)<1) || (Number(qte)>5)){
        alert("verif qte");return false;
    }
    tel=document.getElementById("tel").value;
    if((isNaN(tel)) ||(tel.length!=8) || (tel.charAt(0)<=1)){
        alert("verif tel");return false;}
        mtp=document.getElementById("mtp").value;
        if ((mtp.length!=6) ||(mtp.indexOf("")!=0)){
            alert("verif passe");return false;
        }

}
