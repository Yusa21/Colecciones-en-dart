/*Estás desarrollando una aplicación para gestionar géneros musicales favoritos. El
usuario puede añadir géneros a su lista, pero hay restricciones. Primero, no puede
añadir géneros duplicados. Segundo, el usuario solo puede tener un máximo de 5
géneros favoritos. Si intenta añadir un sexto género, se debe mostrar un mensaje de
error.*/

import 'dart:io';

void main() {
  //Los sets no permiten repetidos, asi que es lo mejor para este caso
  var generos = <String>{};
  var salir = false;

  do{
    print("1. Añadir genero \n" +
        "2. Salir");
    var eleccion = stdin.readLineSync()!;
    switch (eleccion) {
    //Pide el nuevo genero, envia a una funcion el set y el nuevo
      case '1':
        //Si hay mas de 5 generos no te deja añadir mas
        if (generos.length < 5){
          print("Que quieres añadir");
          var nuevo = stdin.readLineSync()!;
          generos = anadirGenero(generos, nuevo);
        }else{
          print("Maximo alcanzado");
        }
        //Marca el Boolean como falso para que salga del bucle
      case '2':
        print("Saliendo");
        print(generos);
        salir = true;
    //Control de fallos
      default:
        print("Opción no valida");
    }
  }while(salir == false);
}

//Funcion que añade el genero nuevo
Set<String> anadirGenero(Set<String> generos, nuevo){
  if(!generos.add(nuevo)){
    print("Elemento repetido");
  }
  return generos;
}
