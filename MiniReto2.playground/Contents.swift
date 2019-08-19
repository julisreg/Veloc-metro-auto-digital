//: Playground - noun: a place where people can playN

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    
    }


class Auto {
    var velocidad : Velocidades
    
    init( ) {
        self.velocidad = Velocidades(velocidadInicial : .Apagado)
    }
    
    
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena : String){
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Alta"
        }
        actual = velocidad.rawValue
        return (actual, velocidadEnCadena)
    }
    var auto: Auto
    auto.velocidad
    for i in 1...20{
    var(actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    
    }
}


