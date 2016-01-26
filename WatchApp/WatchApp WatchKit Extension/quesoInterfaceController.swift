//
//  quesoInterfaceController.swift
//  WatchApp
//
//  Created by Carlos Ramirez Velazquez on 1/25/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {
    var quesoTipo:String=""
    var pru=""
    var pru2=""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! masa
        pru = String(c.masaTipo)
        pru2 = String(c.tamanoTipo)
        print(pru,pru2)
        
        // Configure interface objects here.
    }

    @IBAction func cheddar() {
        quesoTipo="cheddar"
        print(quesoTipo)
        print(pru)
        print(pru2)
    }
    @IBAction func parmesano() {
        quesoTipo="parmesano"
        print(quesoTipo)
        print(pru)
    }
    @IBAction func mozzarela() {
        quesoTipo="mozzarela"
        print(quesoTipo)
        print(pru)
    }
    @IBAction func sinCheese() {
        quesoTipo="sin queso"
        print(quesoTipo)
        print(pru)
    }
    @IBAction func elegirIngredientes() {
        let quesoValor=quesoTipo
        let masaValor=pru
        let tamanoValor=pru2
        let valorContexto = queso (q: quesoValor,t:tamanoValor,m:masaValor)
        pushControllerWithName("ingredientesID", context: valorContexto)
        
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
