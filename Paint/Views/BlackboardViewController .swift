//
//  ViewController.swift
//  Paint
//
//  Created by Nicolas Novalbos on 10/05/2020.
//  Copyright © 2020 Nicolás Novalbos. All rights reserved.
//

import UIKit
import CoreGraphics

class BlackboardViewController: UIViewController {
    
    @IBOutlet weak var blackboard: BlackboardView!
    
    @IBAction func ClearBlackboard(){
        blackboard.vm?.ClearBlackboard()
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let vm =  BlackboardViewModel()
        vm.delegate = self.blackboard
        self.blackboard.vm = vm
    }
}

