//
//  confirmarInterfaceController.swift
//  WatchApp
//
//  Created by Carlos Ramirez Velazquez on 1/25/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class confirmarInterfaceController: WKInterfaceController {
    var ingredientesT:String=""
    var pru:String=""
    var pru2:String=""
    var pru3:String=""
    //var pedido:String=""

    @IBOutlet var confirmarLabel: WKInterfaceLabel!
    
    @IBOutlet var confirmarLabel2: WKInterfaceLabel!
    
    @IBOutlet var confirmarLabel3: WKInterfaceLabel!
    
    @IBOutlet var confirmarLabel4: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! ingredientes
        pru = String(c.quesoTipo)
        pru2=String(c.masaTipo)
        pru3=String(c.tamanoTipo)
        ingredientesT=String(c.ingredientesTipo)
        //pedido += pru
        //pedido += pru2
       // pedido += pru3
       // pedido += ingredientesTipo
        confirmarLabel.setText(pru)
        confirmarLabel2.setText(pru2)
        confirmarLabel3.setText(pru3)
        confirmarLabel4.setText(ingredientesT)
        
        // Configure interface objects here.
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
