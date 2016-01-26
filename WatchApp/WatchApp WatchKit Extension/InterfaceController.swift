//
//  InterfaceController.swift
//  WatchApp WatchKit Extension
//
//  Created by Carlos Ramirez Velazquez on 1/24/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
   
   
    var size:String = ""
    
    @IBOutlet var nextB: WKInterfaceButton!
    
  //  @IBOutlet var sigueinteBotn: WKInterfaceButton!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
       
        nextB?.setEnabled(false)
        //  sigueinteBotn.setEnabled(false)
        // Configure interface objects here.
    }
    
    
    @IBAction func chooseSmall() {
        size="pequeña"
        print(size)
        nextB?.setEnabled(true)
      //  sigueinteBotn.setEnabled(true)
        
    }
    
    @IBAction func chooseMedium() {
        size="mediana"
        print(size)
      //  sigueinteBotn.setEnabled(true)
        
    }
    
  
    @IBAction func chooseBig() {
        size="Grande"
        print(size)
    }
    
   
   
    @IBAction func next() {
        let tamanoElegido = size
        let valorContexto = tamano(s: tamanoElegido)
        
        pushControllerWithName("masaID", context: valorContexto)
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
