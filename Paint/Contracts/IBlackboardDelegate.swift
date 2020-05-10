//
//  IBlackboardDelegate.swift
//  Paint
//
//  Created by Nicolas Novalbos on 10/05/2020.
//  Copyright © 2020 Nicolás Novalbos. All rights reserved.
//

import Foundation

protocol IBlackboardDelegate {
    
  func DrawLines(lines:[Line])
  func ClearBlackBoard()
}
