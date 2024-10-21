Algoritmo CalculoPrecioZapatosV6
	Escribir "Bienvenidas/os al ciberday de zapatos";
	Escribir "A continuacion verá las existencias del producto seleccionado por Ud: ";
	Escribir "En la primera columna verá las tallas en existencia y en la segunda la cantidad de zapatos que nos queda";
	
	definir aDatos Como real;
	definir columna, fila, i, j como real;
	columna=2; fila=4;
	i=0; j=0;
	Dimensión aDatos[columna,fila];
	aDatos[0,0]<- 39;
	aDatos[0,1]<- 40;
	aDatos[0,2]<- 41;
	aDatos[0,3]<- 42;
	
	aDatos[1,0]<- 21;
	aDatos[1,1]<-  5;
	aDatos[1,2]<- 12;
	aDatos[1,3]<-  1;
	
	Para i=0 hasta fila-1 con paso 1 Hacer
		para j=0 hasta columna-1 con paso 1 Hacer
			Escribir aDatos[j,i], "      " sin saltar;
		FinPara
		Escribir "      "
	FinPara
	
	
	Definir Precio Como real;
	
	Precio<-100;
	Escribir "Sólo por hoy el precio de un par de zapatos deportivos: $", Precio, ".-" 
	Escribir "Aproveche que en algunas tallas va quedando poco"
	
	
	Definir rp como entero;
	rp<-1;
	Definir Precio_con_descuento_por_cupon Como real;
	
	Precio_con_descuento_por_cupon<- Precio- (Precio*0.10);
	
	Escribir "------------------------------------------------------"
	Escribir" "
	Escribir " PASO 1"
	Escribir " "
	Escribir "Estimado/a cliente, recuerde que tiene un 10% de descuento en su primera compra";
	Escribir "1.- Es mi primera compra!";
	Escribir "2.- Ya he comprado antes ";
	Escribir" Elija su opcion";
	
	Leer rp;
	
	si (rp=1) Entonces;
		Escribir "Felicidades tiene un 10% de descuento al ser su primera compra" 
		Escribir "y el valor de un par de zapatos deportivos con el descuento es: $", Precio_con_descuento_por_cupon, ".-"
	SiNo;
		Escribir "No pasa nada, puede acceder a otros descuentos en la página o volver en otro momento."
		Escribir "El precio sin descuento se mantiene en: $ " , precio,".-"
	Fin Si;
	
	Definir Precio_sin_descuento como real;
	Definir IVA2 como real;
	IVA2<- precio*1.12;
	
	//se aplica IVA al descuento o al valor inicial? da lo mismo porque es una constante//
	//estos valores incluyen precio neto y con descuento del 10%//
	Definir Cantidad como entero;
	Definir IVA como Real;
	IVA<- Precio_con_descuento_por_cupon* 1.12;
	
	Si (rp<>1) Entonces;
		Escribir "Sumado al valor del IVA, tu compra hasta el momento tiene un costo de: $", IVA2;
	SiNo
		Escribir"Como accedes al descuento del 10%, sumado al valor del iva tu compra hasta el momento tiene un costo de: $" IVA;
	FinSi
	
	//Opcion de descuento o no//
	Definir Descuento_Cantidad como Real;
	Descuento_Cantidad<- IVA- (IVA*0.05);
	Definir Descuento_cantidad_sin_cupon como real;
	Descuento_cantidad_sin_cupon<- IVA2- (IVA2*0.05);
	
	Escribir "--------------------------------------"
	Escribir " "
	Escribir "PASO 2"
	Escribir "   " 
	Escribir "A continuación: señale la cantidad de articulos que lleva: ";
	Escribir "Recuerde que sólo por hoy si lleva más de un par de zapatos deportivos, obtendrá un 5% de descuento!"
	Leer Cantidad;
	
	si (Cantidad =1) y (r<>1) Entonces
		Escribir "El valor de cada par de zapatos deportivos es de: $", IVA2;
	sino 
		Escribir "Recibe un 5% de descuento en cada par de zapatos deportivos"
		
	FinSi
	
    //valores finales//
	Definir Precio_Cantidad como Real;
	Precio_Cantidad<- Descuento_Cantidad*Cantidad;
	
	Definir Costo_envio como Real;
	Definir kg como Real;
	kg<-3;
	Costo_envio<- (10) +2*kg;
	Definir Precio_Final como real;
	Precio_Final<- Precio_Cantidad+Costo_envio;
	
	Escribir "__________________________________________________________";
	Escribir " " ;
	Escribir "PASO 3";
	Escribir " ";
	Escribir " Seleccione despacho o retiro";
	Definir arreglo Como Caracter;
	
	Dimension arreglo[3];
	
	arreglo[0]<- "1. Retiro en tienda";
	arreglo[1]<- "2. Despacho Nacional";
	arreglo[2]<- "3. Despacho internacional";
	
	Escribir "Opción ", arreglo[0];
	Escribir "Opción ", arreglo[1];
	Escribir "Opción ", arreglo[2];
	
	Escribir " ¿Que opcion elige? (señale 1,2 ó 3)";
	leer op
	
	Si op<=2 Entonces
		Escribir "El despacho es gratis";
	SiNo
		Escribir "El despacho es: $ " Costo_envio;
		Escribir " y se demora 7 días hábiles"
	FinSi
	
	Escribir "__________________________________________"
	Escribir " "
	Escribir " PASO 4 y final"
	
	Si (rp=1) y (Cantidad>=2) y (op=3) Entonces
		Escribir " El precio total de su compra es: $ ", Precio_Final;
	Sino
		Escribir " El Precio sin Descuento del 10% por primera compra es: $", Precio;
		Escribir " El precio sin Descuento del 5% por cantidad es: $ ", IVA2;
		Escribir " El despacho es gratis para compras nacionales o retiro en tienda"
 	FinSi
	
	Definir Carrito_compras Como Caracter;
	Carrito_compras="si";
	
	Repetir
		Escribir " ¿Desea agregar otro producto al carro de compras (si/no)?"
		Leer Carrito_compras;
	Hasta Que Carrito_compras<> "si";
	Escribir " Ha finalizado su proceso de compra, porfavor acceda al proceso de pago"
FinAlgoritmo



	