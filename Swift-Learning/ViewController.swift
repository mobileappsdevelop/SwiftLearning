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
        
        let incrementByTen = makeIncrementer(forIncrement: 10)
        print(incrementByTen())//10
        print(incrementByTen())//20
        
        var directionToHead = Planet.earth
    }

    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
    
    
    func getWeightPlanet(planet: Planet) -> Double {
        if planet == Planet.earth {
            return  pow(5.972, 24)
        } else if  planet == Planet.mars{
            return  pow(6.39, 23)
        } else if  planet == Planet.jupiter{
            return  pow(1.898, 27)
        }
        return 0
    }
    
    enum Planet {
        case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
}

