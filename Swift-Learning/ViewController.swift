//
//  ViewController.swift
//  Swift-Learning
//
//  Created by Artem Kutukov on 23.10.16.
//  Copyright © 2016 Artem Kutukov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //bibka-huipka
        
        var fact = factorial(number: 6)
        print("6! = \(fact)")

        
    }
    
    func factorial(number: Int) -> (Int) {
        if (number <= 1) {
            return 1
        }
        
        return number * factorial(number: number - 1)
    }
    

}

