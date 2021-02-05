//
//  ViewController.swift
//  WA_Group84_Blashko
//
//  Created by Blashko Maksim on 05.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        task_0(numberOne: 4, numberTwo: 4)
        task_1(number: 5)
        task_2(number: 5)
        
    }

    func task_0(numberOne: Int, numberTwo: Int) {
        if numberOne > numberTwo {
            print("First number: \(numberOne) is bigger than second: \(numberTwo)")
        } else if numberOne < numberTwo {
            print("Second number: \(numberTwo) is bigger than first: \(numberOne)")
        } else {
            print("Numbers are equal")
        }
    }

    func task_1(number: Int) {
        let square = number * number
        let cube = number * square
        
        print("Square of number \(number): \(square)")
        print("Cube of number \(number): \(cube)")
    }
    
    func task_2(number: Int) {
        for i in 0...number {
            print(i, number-i)
        }
    }
}

