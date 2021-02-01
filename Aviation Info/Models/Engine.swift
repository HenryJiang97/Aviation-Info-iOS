//
//  Engine.swift
//  Aviation Info
//
//  Created by Henry Jiang on 9/7/20.
//  Copyright © 2020 Henry Jiang. All rights reserved.
//

import Foundation

class Engine {
    var name: String
    var dimension: EngineDimension
    var weight: Int
    var fanDiameter: Double
    var takeOffThrust: Double
    
    init(name: String, dimension: EngineDimension, weight: Int, fanDiameter: Double, takeOffThrust: Double) {
        self.name = name
        self.dimension = dimension
        self.weight = weight
        self.fanDiameter = fanDiameter
        self.takeOffThrust = takeOffThrust
    }
}
