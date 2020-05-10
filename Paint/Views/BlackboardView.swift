//
//  BlackboardView.swift
//  Paint
//
//  Created by Nicolas Novalbos on 10/05/2020.
//  Copyright © 2020 Nicolás Novalbos. All rights reserved.
//

import Foundation
import UIKit

class BlackboardView: UIView, IBlackboardDelegate {
   
    var lines: [Line] = []
    var vm: BlackboardViewModel?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        if let touch = touches.first {
            vm?.begin = touch.location(in: self)
            vm?.end = touch.location(in: self)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            vm?.end = touch.location(in: self)
            vm?.CreateLine()
            vm?.UpdatePoints()
            vm?.Paint()
        }
    }
    
    override func draw(_ rect: CGRect) {

        let context = UIGraphicsGetCurrentContext();
        context?.setStrokeColor(UIColor.black.cgColor);
        context?.setLineWidth(3.0)
        
        for line in lines {
            let beginLine = line.points.origin;
            context?.move(to: beginLine)
            context?.addLine(to: CGPoint(x: line.points.origin.x + line.points.size.width, y: line.points.origin.y + line.points.size.height))
        }
        
        context?.strokePath()
    }
    
    func DrawLines(lines: [Line]) {
        
        self.lines = lines
        setNeedsDisplay()
    }
       
    func ClearBlackBoard() {
        
        lines = []
        setNeedsDisplay()
    }
}
