//
//  ingredientesInterfaceController.swift
//  WatchApp
//
//  Created by Carlos Ramirez Velazquez on 1/25/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesInterfaceController: WKInterfaceController {
    var ingredientesTipo:String=""
    var pru:String=""
    var pru2:String=""
    var pru3:String=""

    @IBOutlet var checkpepe: WKInterfaceImage!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! queso
        pru = String(c.cheese)
        pru2=String(c.masaTipo)
        pru3=String(c.tamanoTipo)
        
        // Configure interface objects here.
    }

    @IBAction func jamon() {
        ingredientesTipo += "Jamon"
        print(ingredientesTipo,pru,pru2,pru3)
        print("-----------------------")
    //    checkpepe.set

    }
    @IBAction func pepe() {
        ingredientesTipo += "Peperoni"
        print(ingredientesTipo,pru,pru2,pru3)
        print("-----------------------")

    }

    @IBAction func pina() {
        ingredientesTipo += "Piña"
        print(ingredientesTipo,pru,pru2,pru3)
        print("-----------------------")

    }
    @IBAction func cebolla() {
        ingredientesTipo += "Cabolla"
        print(ingredientesTipo,pru,pru2,pru3)
        print("-----------------------")

    }
    @IBAction func salchichita() {
        ingredientesTipo += "Salchichita"

        print(ingredientesTipo,pru,pru2,pru3)
        print("-----------------------")
    }
    @IBAction func confirmar() {
        let valorTamano=pru3
        let valorMasa=pru2
        let valorQueso=pru
        let valorIngredientes = ingredientesTipo
        let valorContexto = ingredientes (i: valorIngredientes,q:valorQueso,m:valorMasa, t:valorTamano
        )
        pushControllerWithName("confirmarID", context: valorContexto)
        
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
