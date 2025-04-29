object paquete{
    var cantidad = 0
    var destino = laMatrix
    method estaPago()= cantidad >= 50
    method pagar(unaCantidad){
         cantidad = unaCantidad
    }
    method puedeEntregarse(unMensajero){
        destino.dejaPasar(unMensajero) && self.estaPago
    }
    }
object paqueteViajero{
    var cantidad = 0
   var destinos = [puenteDeBrooklyn,laMatrix]
   method estaPago()= cantidad  >= 100
   method pagar(unaCantidad){
       cantidad = cantidad + unaCantidad
   }
}
object paquetito{
    method estaPago()=  true
    method puedeEntregarse(unMensajero){
        return true
    }
}
 object puenteDeBrooklyn{
     method dejaPasar(unMensajero){
        unMensajero.peso() <= 1000
     }
    }
object laMatrix(){
    method dejaPasar(unMensajero){
        unMensajero.puedeLlamar()
    }
}
object roberto{
    var vehiculo = camion
    method cambiarVehiculo(unVehiculo){
        vehiculo = unVehiculo
    }
    method peso(){
        return vehiculo.peso() + 90
    }
    method puedeLlamar()= false
}
object neo{
    var tieneCredito = true
    method cargarCredito(){
        tieneCredito = true
    }
    method agotarCredito(){
        tieneCredito = false
    }
    method peso()= 0
    method puedeLlamar()= tieneCredito
}
object chuckNorris{
    method peso()= 80
    method puedeLlamar()= true
}
object bicicleta{
   method peso()=5
}
object camion{
   var cantAcoplados = 1
   method cantAcoplados(unaCantidad){
        cantAcoplados = unaCantidad
   }
   method peso()= cantAcoplados * 500
}