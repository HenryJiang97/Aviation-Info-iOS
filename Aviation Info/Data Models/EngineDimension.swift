//
//  EngineDimension.swift
//  Aviation Info
//
//  Created by Henry Jiang on 9/7/20.
//  Copyright © 2020 Henry Jiang. All rights reserved.
//

import Foundation

class EngineDimension: Dimension {
    var length: Double
    var width: Double
    var height: Double
    
    init(length: Double, width: Double, height: Double) {
        self.length = length
        self.width = width
        self.height = height
    }
    
}
