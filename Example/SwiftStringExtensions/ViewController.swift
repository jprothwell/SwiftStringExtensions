//
//  ViewController.swift
//  SwiftStringExtensions
//
//  Created by jprothwell@gmail.com on 09/28/2018.
//  Copyright (c) 2018 jprothwell@gmail.com. All rights reserved.
//

import UIKit
import SwiftStringExtensions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard "false".toBool() else {
            print("false")
            return
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

