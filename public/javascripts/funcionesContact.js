addEventListener('load', f1);

function f1(){
    document.getElementById('contact').disabled = true;
    document.getElementById('message').addEventListener('keyup', contador);
}

function contador(){
    let caracteres = 280;
    let total = document.getElementById('message').value.length;
    let cantDisponible = caracteres - total;
    if(cantDisponible < 0) {
        document.getElementById('count').style.color = "red";
        document.getElementById('contact').disabled = true;
    } else {
        document.getElementById('count').style.color = "green";
        document.getElementById('contact').disabled = false;
    }
    document.getElementById('count').innerHTML = cantDisponible;
}