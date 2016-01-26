//
//  queso.swift
//  WatchApp
//
//  Created by Carlos Ramirez Velazquez on 1/25/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit

class queso: NSObject {
    var cheese : String=""
    var tamanoTipo :String=""
    var masaTipo :String = ""
    
    init(q : String,t: String, m:String) {
        cheese = q
        tamanoTipo=t
        masaTipo=m
        
    }

}
