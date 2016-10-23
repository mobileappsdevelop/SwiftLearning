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
        
//        let incrementByTen = makeIncrementer(forIncrement: 10)
//        print(incrementByTen())//10
//        print(incrementByTen())//20
        
      
  
        let weight = getWeightPlanet(Planet.earth, useSwitch: true)
          print("weigt planer is \(weight) kg")
    }

    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
    
    //chlen ruslana
    func getWeightPlanet(_ planet: Planet, useSwitch: Bool) -> Double {
        if useSwitch {
            switch planet {
            case Planet.earth:
                return pow(5.972, 24)
            case Planet.mars:
                return pow(6.39, 23)
            case Planet.jupiter:
                return pow(1.898, 27)
            default:
                return 0
            }
        } else {
            if planet == Planet.earth {
                return  pow(5.972, 24)
            } else if  planet == Planet.mars{
                return  pow(6.39, 23)
            } else if  planet == Planet.jupiter{
                return  pow(1.898, 27)
            } else {
                return 0
            }
        }
        
    }
    
    enum Planet {
        case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
}

