//
//  Plane.swift
//  Aviation Info
//
//  Created by Henry Jiang on 9/7/20.
//  Copyright © 2020 Henry Jiang. All rights reserved.
//

import Foundation

class Plane {
    var name: String
    var dimension: Dimension
    var manufacturer: Manufacturer
    var range: Int
    var seats: Int
    var engine: Engine
    
    
    init(name: String, dimension: Dimension, manufacturer: Manufacturer, range: Int, seats: Int, engine: Engine) {
        self.name = name
        self.dimension = dimension
        self.manufacturer = manufacturer
        self.range = range
        self.seats = seats
        self.engine = engine
    }
}
