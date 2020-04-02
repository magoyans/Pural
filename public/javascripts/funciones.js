addEventListener('load', f1);


function f1(){
    document.getElementById('register').disabled = true;

    document.getElementById('name').addEventListener('blur', f2);
    document.getElementById('lastName').addEventListener('blur', f3);
    document.getElementById('email').addEventListener('blur', f4);
    document.getElementById('pw2').addEventListener('keyup', comprobar);
    // document.getElementById('delete').addEventListener('click', Swal.fire);
}

function f2(){
    if (document.getElementById('name').value.length ==  0){
        document.getElementById('name').style = "border: 2px solid red"; 
    }
}

function f3(){
    if (document.getElementById('lastName').value.length ==  0){
        document.getElementById('lastName').style = "border: 2px solid red"; 
    }
}

function f4() { 
    let email = document.getElementById('email').value.trim();
    let verificacioncaracteres = email.split("@");
    if (verificacioncaracteres[0].length > 5){
        document.getElementById('register').disabled = false;

    }else{
        document.getElementById('register').disabled = true;
    }
}

function comprobar(){
    let pw1 = document.getElementById('pw1').value;
    let pw2 = document.getElementById('pw2').value;
    if(pw1.length > 0) {
            if(pw1 == pw2){
                document.getElementById('pw1').style.border = "2px solid green";
                document.getElementById('pw2').style.border = "2px solid green";
                document.getElementById ('passwordHelpBlock').innerHTML = "Passwords match";
            }else{  
                //Pintar de color rojo los bordes del input
                document.getElementById('pw1').style.border = "2px solid red";
                document.getElementById('pw2').style.border = "2px solid red";
                document.getElementById ('passwordHelpBlock').innerHTML = "Passwords don't match"
            }
    }

    if(pw1.length >= 8 && pw1.length <= 10){
        document.getElementById ('passwordCount').innerHTML = "Requirements correct";
    }else{
        document.getElementById ('passwordCount').innerHTML = "Check Requirements"
        document.getElementById('pw1').style.border = "2px solid red";
        document.getElementById('pw2').style.border = "2px solid red";
    }

}

//  function Swal.fire({
//      title: 'Are you sure?',
//      text: "You won't be able to revert this!",
//      icon: 'warning',
//      showCancelButton: true,
//      confirmButtonColor: '#3085d6',
//      cancelButtonColor: '#d33',
//      confirmButtonText: 'Yes, delete it!'
//    }).then((result) => {
//      if (result.value) {
//        Swal.fire(
//          'Deleted!',
//          'Your file has been deleted.',
//          'success'
//        )
//      }
//    })

