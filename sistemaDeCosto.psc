Algoritmo Proyecto1SistemaDeCosto
    Definir precio, cantidad, subT, ValorDescuento, aux Como Real
	Definir stgo Como Logico
	Definir envio, cupon, despacho Como Caracter
	definir cuponDescuento como Entero
	IVA <- 0.19	
	
    Repetir
		Escribir "Ingrese el precio del producto:"
		Leer precio
	Hasta Que precio > 0
	
	Repetir
		Escribir "Ingrese la cantidad de productos a comprar:"
		Leer cantidad
		Si cantidad >= 1 y cantidad <= 5 Entonces	//descuento 0%  entre 1 y 5 uni
			subT= (precio * cantidad)
			ValorDescuento=subT
		SiNo
			Si cantidad >= 6 y cantidad <= 10 Entonces	//descuento 10% entre 6 a 10 uni
				subT=(precio * cantidad)
				ValorDescuento = subT * 0.9
			SiNo
				si	cantidad >= 11 y cantidad <= 15 Entonces		//descuento 20% entre 11 a 15 uni
					subT=(precio * cantidad)
					ValorDescuento = subT * 0.8
				SiNo
					si cantidad <= 16 Entonces	//descuento 30% sobre 16
						subT=(precio * cantidad)
						ValorDescuento = subT * 0.7
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que cantidad >= 1 
	Escribir "El descuento fue de $" (subT-ValorDescuento) ".- pesos"
	
	//despacho
	Repetir
		Escribir "Es un despacho dentro de Santiago? (S/N)"
		Leer envio
		Si Mayusculas(envio) = "S"  Entonces
			stgo = Verdadero
		SiNo
			stgo = Falso
		FinSi
	Hasta Que Mayusculas(envio) = "S" O Mayusculas(envio) = "N"
	//termino despacho
	
	//inicio cupon descuento
	Escribir "Tiene algún cupón de descuento? (S/N):"
	Leer cupon
	Si Mayusculas(cupon) = "S" Entonces
		Escribir "Ingrese el porcentaje de descuento(%):"
		Leer cuponDescuento
		Si cuponDescuento > 0 y cuponDescuento < 100 Entonces
			aux <- ValorDescuento - (ValorDescuento * cuponDescuento/100)
		SiNo
			aux <- ValorDescuento
		FinSi
	SiNo
		Escribir "Sin cupón de descuento!"
		aux <- ValorDescuento
	FinSi
	//termino cupon descuento
	
	Escribir aux
	Escribir "----------------"
	//validar despacho
	si stgo = Verdadero y Mayusculas(envio)="S" entonces
		costoEnvio = 500
		despacho = "Si"
	sino
		costoEnvio = 1000
		despacho = "No"
	FinSi
	//calculos finales
	valorInicial <- subT
	totaldescuentosAplicados <- subt-aux
	precioNeto <- valorInicial - totaldescuentosAplicados + costoEnvio
	precioIva <- precioNeto * IVA
	precioBruto <- precioNeto + precioIva
	//termino caluclos
	Escribir ""
	Escribir "Detalle de compra: "
	Escribir "Valor inicial: " valorInicial ".- pesos"
	Escribir "Descuentos aplicados: " totaldescuentosAplicados ".- pesos"
	Escribir "Aplica Despacho dentro de Stgo: " despacho ", Costo del despacho: " costoEnvio ".- pesos"
	Escribir "Impuestos: " PrecioIva ".- pesos"
    Escribir "Costo total: " PrecioBruto ".- pesos"
	
FinAlgoritmo