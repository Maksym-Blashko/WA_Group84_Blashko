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

}

