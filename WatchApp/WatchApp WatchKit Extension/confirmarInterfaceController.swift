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
    var ingredientesTipo:String=""
    var pru:String=""
    var pru2:String=""
    var pru3:String=""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! queso
        pru = String(c.cheese)
        pru2=String(c.masaTipo)
        pru3=String(c.tamanoTipo)
        
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
