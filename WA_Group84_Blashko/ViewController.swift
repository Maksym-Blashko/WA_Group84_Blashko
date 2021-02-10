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
        
        // Assignment 2
        task_0(numberOne: 4, numberTwo: 4)
        task_1(number: 5)
        task_2(number: 5)
        task_3(number: 5)
        task_4(number: 5)
        task_1_Block2(endDate: 2021)
        task_2_Block2()
        task_3_Block2()
        task_4_Block2(number: 123456)
        
        // Assignment 3
        assignment_3_Task_1()
        assignment_3_Task_2()
        assignment_3_Task_3()
        assignment_3_Task_4()
        assignment_3_Task_5()
        assignment_3_Task_6()
        assignment_3_Task_7()
        assignment_3_Task_8()
    }

    // MARK: Assignment 2
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
    
    
    // MARK: Assignment 3
    func assignment_3_Task_1() {
        let name = "Maksym"
        print(name.count)
    }
    
    func assignment_3_Task_2() {
        let name = "Анатольевич"
        
        if name.hasSuffix("ич") || name.hasSuffix("на") {
            print("Отчество содержит ич/на")
        } else {
            print("Отчество не содержит ич/на")
        }
    }
    
    func assignment_3_Task_3() {
        let name = "MaksymBlashko"
        var str1: String = ""
        var str2: String = ""
        var str3: String = ""
        var firstLoop = true
        var firstWord = true
                        
        for i in name {
            if firstLoop {
                str1 += String(i)
                firstLoop = false
                continue
            }

            if i.isLowercase && firstWord {
                str1 += String(i)
            } else {
                firstWord = false
                str2 += String(i)
            }
        }
        str3 = str1 + " " + str2
        print(str3)
    }
    
    func assignment_3_Task_4() {
        let name = "Ось"
        var array = [Character]()
        var newName: String = ""
        
        for i in name {
            array.append(i)
        }
        
        for i in 1...array.count {
            newName += String(array[array.count-i])
        }
        print(newName)
    }
    
    func assignment_3_Task_5() {
        let number = "1234567"
        var newNumber: String = ""
        var pointCount = 1
        var totalCount = 1
        var firsPoint = number.count % 3
        
        for i in number {
            if (pointCount == 3 || pointCount == firsPoint) && totalCount != number.count {
                newNumber += String(i) + ","
                totalCount += 1
                pointCount = 1
                firsPoint = 0
            } else {
                newNumber += String(i)
                pointCount += 1
                totalCount += 1
            }
        }
        print(newNumber)
    }
    
    func assignment_3_Task_6() {
        var valid = [String]()
        let pass = "aD_1"
        
        for i in pass {
            if i.isNumber && !valid.contains("a") {
                valid.append("a")
            }
            if i.isUppercase && !valid.contains("b") {
                valid.append("b")
            }
            if i.isLowercase && !valid.contains("c") {
                valid.append("c")
            }
            if (i.isSymbol || i.isPunctuation || i.isMathSymbol) && !valid.contains("d") {
                valid.append("d")
            }
        }
        
        if valid.count == 4 {
            print("Strong password")
        } else {
            print("Password is not strong")
        }
    }
    
    func assignment_3_Task_7() {
        var array = [9, 1, 2, 5, 1, 7]
        print("Unsort - \(array)")
        
        // sort
        for i in 0...array.count-1 {
            for j in 0...array.count-2 {
                if array[i] < array[j] {
                    array.swapAt(i, j)
                }
            }
        }
        
        // remove
        var arrayWithoutDuplicate = [Int]()
        
        for value in array {
            if !arrayWithoutDuplicate.contains(value) {
                arrayWithoutDuplicate.append(value)
            }
        }
        
        print("Sort - \(array)")
        print("Without duplicate - \(arrayWithoutDuplicate)")
    }
    
    func assignment_3_Task_8() {
        let alphabet: [String: String] = ["А": "A", "а": "a", "Б": "B", "б": "b", "В": "V", "в": "v", "Г": "G", "г": "g", "Д": "D", "д": "d", "Е": "E", "е": "e", "Ё": "E", "ё": "e", "Ж": "ZH", "ж": "zh", "З": "Z", "з": "z", "И": "I", "и": "i", "Й": "I", "й": "i", "К": "K", "к": "k", "Л": "L", "л": "l","М": "M", "м": "m", "Н": "N", "н": "n", "О": "O", "о": "o", "П": "P", "п": "p", "Р": "R", "р": "r", "С": "S", "с": "s", "Т": "T", "т": "t", "У": "U", "у": "u", "Ф": "F", "ф": "f", "Х": "H", "х": "h", "Ц": "C", "ц": "c", "Ч": "CH", "ч": "ch", "Ш": "SH", "ш": "sh", "Щ": "SH", "щ": "sh", "Ъ": "", "ъ": "", "Ы": "Y", "ы": "y", "Ь": "", "ь": "", "Э": "E", "э": "e", "Ю": "JU", "ю": "ju", "Я": "YA", "я": "ya"]
        
        func translate(word: String) -> String {
            var translatedWord: String = ""
            
            for i in word {
                if let transLetter = alphabet[String(i)] {
                    translatedWord += transLetter
                } else {
                    translatedWord += ""
                }
            }
            return translatedWord
        }
        
        print(translate(word: "ЯЗЗЬ"))
        print(translate(word: "морДа"))
    }
}

