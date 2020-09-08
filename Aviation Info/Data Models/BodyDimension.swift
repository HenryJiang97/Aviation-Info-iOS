//
//  BodyDimension.swift
//  Aviation Info
//
//  Created by Henry Jiang on 9/7/20.
//  Copyright © 2020 Henry Jiang. All rights reserved.
//

import Foundation

class BodyDimension: Dimension {
    var length: Double
    var height: Double
    
    init(length: Double, height: Double) {
        self.length = length
        self.height = height
    }
}
