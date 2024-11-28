/*Estás desarrollando una aplicación básica de tareas donde los usuarios pueden
agregar y ver tareas que necesitan hacer. La lista de tareas se muestra de forma
secuencial y el usuario puede verlas en el orden en que las agregó*/

import 'dart:io';

void main() {
  //Hace falta que las tareas esten ordenadas, asi que la mejor opcion es una lista
  var tareas = <String>[];
  var salir = false;

  do{
    print("1. Añadir tarea \n" +
        "2. Listar tareas\n" +
        "3. Salir");
    var eleccion = stdin.readLineSync()!;
    switch (eleccion) {
    //Pide el nuevo genero, envia a una funcion el set y el nuevo
      case '1':
          print("Que quieres añadir");
          var nuevo = stdin.readLineSync()!;
          tareas = anadirTareas(tareas, nuevo);

    //Lista todas las tareas
      case '2':
        listarTareas(tareas);

    //Marca el Boolean como falso para que salga del bucle
      case '3':
        print("Saliendo");
        salir = true;
    //Control de fallos
      default:
        print("Opción no valida");
    }
  }while(salir == false);
}

//Funcion que añade la tarea nueva
List<String> anadirTareas(List<String> tareas, nueva){
  tareas.add(nueva);
  return tareas;
}

//Lista todas las tareas
void listarTareas(List<String> tareas){
  tareas.forEach(print);
}
