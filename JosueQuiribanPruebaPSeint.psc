Algoritmo OperacionesAlgoritmicas
	Definir op Como Entero;
	
	Repetir
		Escribir "Menu";
		Escribir "1.Secuencial";
		Escribir "2.Condicional Si entonces";
		Escribir "3.Condicional Si entonces anidado";
		Escribir "4.Condicional segun";
		Escribir "5.Repetitiva Mientras";
		Escribir "6.Repetitiva Repetir";
		Escribir "7.Repetitiva Para";
		Escribir "8.Arreglo Simple";
		Escribir "9.Arreglo Bidimensional";
		Escribir "10.Salir";
		leer op;
		Limpiar Pantalla;
		Segun op Hacer
			1:
				Secuencial;
			2:
				CondicionalSiEntonces;
			3:
				CondicionalSiEntoncesAnidados;
			4:
				CondicionalSegun;
			5:
				Escribir "Lo siento no supe hacerlo ";
			6:
				RepetitivaRepetir;
			7:
				Escribir "Lo siento no supe hacerlo ";
			8:
				Escribir "Lo siento no supe hacerlo";
			9:
				ArregloBidimensional;
			10:
				Escribir "Hasta luego!";
		FinSegun
		Esperar Tecla;
		Limpiar Pantalla;
	Hasta Que op==10
	
FinAlgoritmo

Funcion Secuencial
	Definir P1,P2,P3, resultado Como Real;
	Definir continuar Como Caracter;
	
	Repetir
		Escribir "Ingrese 3 numeros uno a uno para promediar";
		Leer P1,P2,P3;
		resultado <-(P1+P2+P3)/3;
		Escribir "El promedio de los 3 numeros ingresados es: ",resultado;
		Escribir "Desea continuar?? (s/n)";
		Leer continuar;
		Limpiar Pantalla;
	Hasta Que continuar<>"s"	
	Escribir "Hasta luego!!";
FinFuncion

Funcion CondicionalSiEntonces
	Definir nombre, genero Como Caracter;
	Escribir "Ingrese Nombre";
	Leer nombre;
	Escribir "Ingrese Genero";
	Leer genero;
	
	Si genero=="hombre" Entonces
		Escribir "Hola ",nombre," usted debe dirigirse al baño de Hombres.";
	SiNo
		Escribir "Hola ",nombre," usted debe dirigirse al baño de Mujeres.";
	FinSi
FinFuncion

Funcion CondicionalSiEntoncesAnidados
	Definir nombre, genero, i Como Caracter;
	Escribir "Ingrese Nombre";
	Leer nombre;
	Escribir "Ingrese Genero";
	Leer genero;
	Escribir "Desea utilizar el baño o la ducha??:";
	Leer i;
	
	Si genero=="hombre" Entonces
		Escribir "Hola ",nombre," usted debe dirigirse al baño de Hombres.";
		Si i=="ducha" Entonces
			Escribir"Debe cancelar el monto de $2.500 por utilizar la ducha.";
		Sino 
			Escribir "Debe cancelar el monto de $250 por utilizar el baño.";
		FinSi
	SiNo
		Escribir "Hola ",nombre," usted debe dirigirse al baño de Mujeres.";
		Si i=="ducha" Entonces
			Escribir"Debe cancelar el monto de $2.500 por utilizar la ducha.";
		Sino 
			Escribir "Debe cancelar el monto de $250 por utilizar el baño.";
		FinSi
	FinSi
FinFuncion

Funcion CondicionalSegun
	Definir num Como Entero;
	Definir salir Como Caracter;
	Repetir
		Escribir "Ingrese un numero del 1 al 10";
		Leer num;
		Segun num Hacer
			1:
				Escribir"Su numero escrito en palabras es: Uno";
			2:
				Escribir"Su numero escrito en palabras es: Dos";
			3:
				Escribir"Su numero escrito en palabras es: Tres";
			4:
				Escribir"Su numero escrito en palabras es: Cuatro";
			5:
				Escribir"Su numero escrito en palabras es: Cinco";
			6:
				Escribir"Su numero escrito en palabras es: Seis";
			7:
				Escribir"Su numero escrito en palabras es: Siete";
			8:
				Escribir"Su numero escrito en palabras es: Ocho";
			9:
				Escribir"Su numero escrito en palabras es: Nueve";
			10:
				Escribir"Su numero escrito en palabras es: Diez";
			De Otro Modo:
				Escribir "El numero ingresado esta fuera del rango.";
		FinSegun
		Escribir"Desea continuar?? (s/n):";
		Leer salir;
		Limpiar Pantalla;
	Hasta Que salir<>"s"
	Escribir "Hasta luego!!";
FinFuncion

Funcion RepetitivaRepetir
	Definir j,continuar Como Caracter;
	Definir intentos Como Entero;
	
	Repetir
		intentos<-0;
		Repetir
			Escribir"Ingrese un nombre con j hasta adivinar el nombre correcto:";
			Leer j;
			intentos<-intentos+1;
			Si j<>"juan" entonces
				Escribir"Ingrese un nombre con j hasta adivinar el nombre correcto:";
				Leer j;
				intentos<-intentos+1;
			FinSi
		Hasta Que j=="juan";
		Escribir "Felicidades, has adivinado el nombre: Juan!, te tomo un total de: ",intentos," intentos.";
		Escribir "Desea continuar?? (s/n)";
		Leer continuar;
		Limpiar Pantalla;
	Hasta Que continuar<>"s"
	Escribir "Hasta la proxima!!!!!";
FinFuncion

Funcion RepetitivaMientras
	Definir numer,i,n como entero;

	n<-1;
	Mientras n<>0 Hacer
		Escribir "Escriba un numero";
		Leer i;
	FinMientras
FinFuncion

Funcion ArregloBidimensional
	Definir nombre,apellido,fono,email Como Caracter;
	Definir  i,alumno,cantidad Como Entero;
	
	Escribir"Cual es la cantidad de alumnos a ingresar:";
	Leer cantidad;
	Para i<-0 Hasta cantidad-1 Hacer
		Limpiar Pantalla;
		Escribir" ingrese el nombre del alumno n ",i+1,":";
		Leer nombre;
		Escribir "Ingrese el apellido del alumno n ",i+1,":";
		Leer apellido;
		Escribir "Ingrese el fono del alumno n ",i+1,":";
		leer fono;
		Escribir "Ingrese el email del alumno n ",i+1,":";
		Leer email;
	FinPara
	Escribir "Lo siento no supe terminarlo.";
FinFuncion
