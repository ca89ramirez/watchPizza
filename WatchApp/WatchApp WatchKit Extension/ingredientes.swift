//
//  ingredientes.swift
//  WatchApp
//
//  Created by Carlos Ramirez Velazquez on 1/25/16.
//  Copyright © 2016 Carlos Ramirez Velazquez. All rights reserved.
//

import WatchKit

class ingredientes: NSObject {
    var ingredientesTipo:String
    var quesoTipo:String
    var masaTipo:String
    var tamanoTipo:String

    init(i:String,q:String,m:String,t:String) {
    ingredientesTipo = i
    quesoTipo=q
    masaTipo=m
    tamanoTipo=t
        
    }
}
