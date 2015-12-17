//: Playground - noun: a place where people can play

import UIKit


/*
Enumeracion con los valores asociados a cada tipo de velocidad
*/
enum Velocidades: Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        
        self = velocidadInicial
    }
}


/*
Clase Auto
*/
class Auto{
    
    var velocidad : Velocidades
    
    
    init(){
        
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let velocidadActual: Int = self.velocidad.rawValue
        var leyenda : String = ""
        
        switch self.velocidad{
            
        case Velocidades.Apagado:
            
            leyenda = "Vehículo Apagado"
            self.velocidad = Velocidades.VelocidadBaja
            
        case Velocidades.VelocidadBaja:
            
            leyenda = "Vehículo en movimiento (Velocidad Baja)"
            self.velocidad = Velocidades.VelocidadMedia
            
        case Velocidades.VelocidadMedia:
            
            leyenda = "Vehículo en movimiento (Velocidad Media)"
            self.velocidad = Velocidades.VelocidadAlta
            
        case Velocidades.VelocidadAlta:
            
            leyenda = "Vehículo en movimiento (Velocidad Alta)"
            self.velocidad = Velocidades.VelocidadMedia
            
            
        }
        
        return (velocidadActual, leyenda)
    }
    
}



//Lógica - Caso de Prueba

var auto = Auto()
for i in 1...20 {
    
    var estadoActual = auto.cambioDeVelocidad()
    print("\(i). Velocidad = \(estadoActual.actual)Km/h, \(estadoActual.velocidadEnCadena)")
    
}

