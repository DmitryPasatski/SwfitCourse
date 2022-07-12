//
//  ViewController.swift
//  LessonThree
//
//  Created by Dmitry Alexandrovich on 10.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    

 func sum (a: Int, b: Int) -> Int {
     return a + b
 }
 func sum (a: Double, b: Double) -> Double {
     return a + b
 }
 func sum (a: Double, b: Int) -> Double {
     return a + Double(b)
 }
 func sum (a: Int, b: Double) -> Double {
     return Double(a) + b
 }
 func minus (a: Int, b: Int) -> Int {
     return a - b
 }
 func minus (a: Double, b: Double) -> Double {
     return a - b
 }
 func minus(a: Double, b: Int) -> Double {
     return a - Double(b)
 }
 func minus (a: Int, b: Double) -> Double {
     return Double(a) - b
 }
    func divide(a: Int, b: Int) -> (result: Int, error: Bool){
        if b == 0 {
            return (0, false)
        }
        return (a/b, true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // let rez = self.sum(a: 3, b: 5)
 
      
        
       
        
    // Массив  - это набор однотипных элементов
    
    var array: [Int] = [1, 3, 5, 8, 4, 2, 7]
        
        let x = 19
        array.append(x)
        print(array)
   
        
    // Корректные имена массивов
    // stringsArray
    // userAsrray
    
    // Следует избегать обращения к элементу массива по индексу
    
    let count = array.count
    print(count)
    
        let first = array.remove(at: 3)
        print(first)
        print(array)
        
        // Работа с массивами
        
        for element in array {
            print(element)
        }
    
        for (index, element) in array.enumerated(){
            print("\(element) at \(index)")
        }
    
        let someStringsArray: [String] = ["Ok", "Buy","Zero","Hai","As","Klll","Po","Lopik","Lolop","Polka","Ac","Jnbu","Pllm","Looma","Pollan","An","Mkn","KKii","Mnnja",]
    
        print(someStringsArray.count)
        
        for element in someStringsArray {
            if element.count > 3  {
                print(element)
            }
        }
        
        // Функции высшего порядка:
        
        // map - где $0 это обращение к каждому элементу массива
        
        print(array)
        let mappedArrey = array.map({ $0 * 10 })
        print(mappedArrey)
        
        // filter - возвращает тоько те элементы которые соответствуют условию $0 % 2 == 0
        
        let filtredArray = array.filter({ $0 % 2 == 0 })
        print(filtredArray)
        
        // sorted - сортирует массив где каждый элемент массива меньше следующего где $0 текущий элемент, а $1 следующий элемент
        
        let sortedArray = array.sorted(by: {$0 < $1})
        print(sortedArray)
        
    // КОРТЕЖИ: Tuple:
        
        let result = divide(a: 5, b: 1)
        if result.error == false{
            print("Error")
        } else {
            print(result.result)
        }
        print(result)
      
    
    }
    
   
}

