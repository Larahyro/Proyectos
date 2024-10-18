Algoritmo CalculoPrecioZapatosV3
	//Falta agregar bucles y arreglos, los dem?s descuentos.
	Precio<-100;
	Escribir "Sólo por hoy el precio de un par de zapatos deportivos: $", precio, ".-"
	
	Definir rp como entero;
	rp<-1;
	Definir Precio_con_descuento_por_cupon_Unitario Como real;
	Definir Precio_con_descuento_por_cantidad como real;
	Definir Precio_dos_pares_con_descuentos como real;
	Definir Precio_con_IVA_Unitario como real;
	Definir Cantidad como entero;

	Precio_con_descuento_por_cupon_Unitario<- precio- (precio*0.10);
	Precio_con_descuento_por_cantidad<- Precio_con_descuento_por_cupon_Unitario- (Precio_con_descuento_por_cupon_Unitario*0.05);
	Precio_dos_pares_con_descuentos<-Precio_con_descuento_por_cantidad*cantidad;
	Precio_con_IVA_Unitario<- Precio_con_descuento_por_cupon_Unitario*1.12;
	
	Escribir "------------------------------------------------------"
	Escribir" "
	Escribir "Estimado/a cliente, recuerde que tiene un 10% de descuento en su primera compra";
	Escribir "1.- Es mi primera compra";
	Escribir "2.- Ya he comprado antes";
	Escribir "-------------------------";
	Escribir" elija su opcion";
	
	Leer rp;	
	si (rp=1) Entonces;
		escribir "felicidades tienes un 10% de descuento al ser tu primera compra" 
		Escribir "y el valor de un par de zapatos deportivos con el descuento es: $", Precio_con_descuento_por_cupon_Unitario, ".-"
	SiNo;
		escribir "No pasa nada, puede acceder a otros descuentos en la página o volver en otro momento."
		escribir " el precio sin descuento se mantiene en: $ " , precio,".-"
	Fin Si;
	
	
		Escribir"---------------"
	escribir "  "
	Escribir "Ingrese la cantidad de zapatos que compra: ";
	Leer Cantidad;
			
		si (cantidad=2) Entonces;
			escribir "Maravilloso, tiene un 5% de descuento por la compra de dos pares de zapatos deportivos";
		
		SiNo;
			escribir " ¿Estas seguro/a? si compras otro par obtienes un 5% de descuento? esta bien respetamos tu decision";
			
		FinSi;

	


FinAlgoritmo




	