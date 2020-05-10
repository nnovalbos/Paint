//
//  Line.swift
//  Paint
//
//  Created by Nicolas Novalbos on 10/05/2020.
//  Copyright © 2020 Nicolás Novalbos. All rights reserved.
//

import Foundation
import CoreGraphics

class Line: NSObject {
    
    let points: CGRect
    
    init(withRect rect: CGRect ) {
        self.points = rect
    }
}
