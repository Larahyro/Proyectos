
# Proyecto Modulo1

Construirás un algoritmo en pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado. 

Los siguientes son los detalles del producto y la información del cliente:

Precio original: $100
Cupón de descuento: 10% de descuento
IVA (impuesto al valor agregado): 12%
Cantidad: 2 pares de zapatos deportivos
Peso del paquete: 3 kg
Destino del envío: Nueva York
De acuerdo con los requisitos del proyecto, el algoritmo deberá realizar lo siguiente:


Subirás tu solución a un repositorio de GitHub, el cual compartirás con tu equipo educativo, posteriormente.

## Versiones

El primer archivo trabajado desarrolló el primer bucle SI:

si (rp=1) Entonces;
			escribir "felicidades tienes un 10% de descuento al ser tu primera compra"
		SiNo
			escribir "No pasa nada, puede acceder a otros descuentos en la página o volver en otro momento."
		Fin Si;

        
Y gradualmente se agregaron los requerimiento necesarios hasta finalmente agregar el arreglo bidimensional que aparece al principio y que muestra las tallas y existencias del producto:

Escribir " Bienvenidos al ciberday de zapatos";
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


En la tercera version se subió el archivo a GITHUB desde la carpeta local.

Pero la versión final es la titulada:
"CalculoprecioZapatosV5.psc"

