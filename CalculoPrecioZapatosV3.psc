Algoritmo CalculoPrecioZapatosV4
	
	Definir Precio Como real;
	
	Precio<-100;
	Escribir "Sólo por hoy el precio de un par de zapatos deportivos: $", Precio, ".-"
	
	Definir rp como entero;
	rp<-1;
	Definir Precio_con_descuento_por_cupon Como real;
	Definir Precio_sin_descuento_por_cupon Como Real;
	
	Precio_con_descuento_por_cupon<- Precio- (Precio*0.10);
	Precio_sin_descuento_por_cupon<- Precio
		
	Escribir "------------------------------------------------------"
	Escribir" "
	Escribir "Estimado/a cliente, recuerde que tiene un 10% de descuento en su primera compra";
	Escribir "1.- Es mi primera compra";
	Escribir "2.- Ya he comprado antes";
	Escribir "-------------------------";
	Escribir" elija su opcion";
	
	Leer rp;	
	si (rp=1) Entonces;
		Escribir "Felicidades tiene un 10% de descuento al ser su primera compra" 
		Escribir "y el valor de un par de zapatos deportivos con el descuento es: $", Precio_con_descuento_por_cupon, ".-"
	SiNo;
		Escribir "No pasa nada, puede acceder a otros descuentos en la página o volver en otro momento."
		Escribir " el precio sin descuento se mantiene en: $ " , precio,".-"
	Fin Si;
	
	
		Escribir"---------------"
	Escribir "  "
	
	Definir Cantidad como entero;
	Escribir "señale la cantidad de articulos que lleva: ";
	Leer Cantidad;
	
	
	//se aplica IVA al descuento o al valor inicial? da lo mismo porque es una constante//
	Definir IVA como Real;
	IVA<- Precio_con_descuento_por_cupon* 1.12;
	
	Definir Descuento_Cantidad como Real;
	Descuento_Cantidad<- IVA- (IVA*0.05);
	Definir Costo_envio como Real;
	Definir kg como Real;
	kg<-3;
	Costo_envio<- (10) +2*kg;
	
	Definir Valor_Final_con_Descuento como Real;
	Valor_Final_con_Descuento<- (Descuento_Cantidad *Cantidad)+ Costo_envio;
		
	Escribir "El valor de su compra (incluido su despacho a New York) es: $ ", Valor_Final_con_Descuento;
	
	//acá falta considerar precio se debe ajustar segun si tiene o no descuento 10% y del 5%//
	


FinAlgoritmo




	