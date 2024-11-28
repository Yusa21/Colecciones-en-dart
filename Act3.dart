/*Estás desarrollando una aplicación sencilla para gestionar las calificaciones de los
estudiantes. Para cada estudiante, se almacena su nombre y la calificación que ha
obtenido.*/

import 'dart:io';

void main() {
  //El mejor para este son los mapas porque es el que me queda, digo...
  //Tenemos que guardar un nombre y un numero, podemos tratar el nombre la key de las notas para el mapa
  var notas = <String, double>{};
  var salir = false;

  do{
    print("1. Añadir notas \n" +
        "2. Listar notas\n" +
        "3. Salir");
    var eleccion = stdin.readLineSync()!;
    switch (eleccion) {
    //Pide el nuevo genero, envia a una funcion el set y el nuevo
      case '1':
        print("Nombre del alumno");
        var nombre = stdin.readLineSync()!;
        print("Que nota hay que poner");
        //Para que tenga que ser un double la nota
        try{
          var nota = double.parse(stdin.readLineSync()!);
          notas = anadirNota(notas,nombre,nota);
        }catch(e){
          print("Error: Introduzca una nota válida");
        }


    //Lista todas las notas
      case '2':
        listarNotas(notas);

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

//Funcion que añade una nueva nota
Map<String, double> anadirNota(Map<String, double> notas, nombre, nota){
  notas[nombre] = nota;
  return notas;
}

//Lista las notas
void listarNotas(Map<String, double> notas) {
  notas.forEach((nombre, nota) {
    print("$nombre: $nota");
  });
}
