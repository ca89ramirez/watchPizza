//
//  masaInterfaceController.swift
//  WatchApp
//
//  Created by Carlos Ramirez Velazquez on 1/25/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class masaInterfaceController: WKInterfaceController {
    var masaTipo :String=""
    var pru :String=""
    
    @IBOutlet var labele: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as!tamano
        pru = String(c.size)
        labele.setText(String(c.size))
        
        // Configure interface objects here.
        
        
        
        
    }
    
    @IBAction func delgada() {
        masaTipo="delgada"
        print(masaTipo)
        print(pru)
    }
    
    @IBAction func crujiente() {
        masaTipo="crujiente"
        print(masaTipo)
    }
    
    @IBAction func gruesa() {
        masaTipo="gruesa"
        print(masaTipo)
    }
    @IBAction func elegirQueso() {
        let masaValor=masaTipo
        let tamanoValor=pru
        let valorContexto = masa (m: masaValor,t:tamanoValor)
        pushControllerWithName("quesoID", context: valorContexto)
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
