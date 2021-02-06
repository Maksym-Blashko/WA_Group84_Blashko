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
        task_3(number: 5)
        task_4(number: 5)
        task_1_Block2(endDate: 2021)
        task_2_Block2()
        task_3_Block2()
        task_4_Block2(number: 123456)
        
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
    
    func task_3(number: Int){
        
        if number == 0 {
            print("You cannot divide by zero")
            return
        }
        
        var count = 0
        for i in 1...number {
            if (number % i) == 0 {
                print("\(i)")
                count += 1
            }
        }
        print("Total: \(count)")
    }
    
    func task_4(number: Int){
        
        if number == 0 {
            print("\(number) - It's not perfect number")
            return
        }
        
        var array = [Int]()
        var sum = 0

        for i in 1...number-1 {
            if (number % i) == 0 {
                array.append(i)
                sum += i
            }
        }
        
        if sum == number {
            print("\(number) - It's perfect number")
            print(array)
        } else {
            print("\(number) - It's not perfect number")
        }
    }
    
    func task_1_Block2(endDate: Int) {
        
        let beginDate = 1826
        let percentPerYear = 6.0
        var stateMoney = 24.0
        
        if endDate <= beginDate {
            print("Begin date cannot be less than end date")
            return
        }
        
        for _ in beginDate...endDate {
            stateMoney += stateMoney / 100 * percentPerYear
        }
        print("Total state of money for \(endDate) = \(String(format: "%.2f", stateMoney))")
    }
    
    func task_2_Block2() {
        
        let income = 700 * 10
        var expenses = 1000
        let percentPerMonth = 3
        var totalExpenses = 0
        
        for _ in 1...10 {
            expenses += expenses / 100 * percentPerMonth
            totalExpenses += expenses
        }
        print("You are not enough \(totalExpenses - income), you should have \(totalExpenses)")
    }
    
    func task_3_Block2() {
        
        let incomePerMonth = 700
        var expensesPerMonth = 1000
        let percentPerMonth = 3
        var totalMonths = 0
        var income = 2400
        var expenses = 0
        
        while income >= expenses {
            expensesPerMonth += expensesPerMonth / 100 * percentPerMonth
            totalMonths += 1
            income += incomePerMonth
            expenses += expensesPerMonth
        }
        print("You can live \(totalMonths) months")
    }

    func task_4_Block2(number: Int) {
        
        let stringNumber = String(number)
        var array = [Character]()
        var newNumber: String = ""
        
        for i in stringNumber {
            array.append(i)
        }
        
        for i in 1...array.count {
            newNumber += String(array[array.count-i])
        }
        print(newNumber)
    }
    
}

