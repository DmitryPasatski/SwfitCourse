//
//  ViewController.swift
//  HomeWorkTwo
//
//  Created by Dmitry Alexandrovich on 9.07.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.sum(a: 2.1, b: 4)
        self.minus(a: 13, b: 22.7)
        self.mult(a: 3.6, b: 43)
        self.div(a: 94.6, b: 23.4)
        self.strings(a: "cba", b: "cba")
        //self.cikleOne()
        print((((fourLabelNumber % 10) + ((fourLabelNumber % 100) - (fourLabelNumber % 10)) / 10) + (
        fourLabelNumber % 1000 - ((fourLabelNumber % 10) + ((fourLabelNumber % 100) - (fourLabelNumber % 10)) / 10)) / 100) + ((fourLabelNumber - (fourLabelNumber % 1000)) / 1000) )
        self.stepenka(a: 2, b: 16)
        self.factorial(a: 5)
    }
  
    
// 1. УНИВЕРСАЛЬНЫЕ ФУНКЦИИ: +
        // Сложение:
    func sum (a: Int, b: Int){
        print(a + b)
    }
    func sum (a: Double, b: Int){
        print(a + Double(b))
    }
    func sum (a: Int, b: Double){
        print(Double(a) + b)
    }
    func sum (a: Double, b: Double){
        print(a + b)
    }
        // Вычитание
    func minus (a: Int, b: Int){
        print(a - b)
    }
    func minus (a: Double, b: Int){
        print(a - Double(b))
    }
    func minus (a: Int, b: Double){
        print(Double(a) - b)
    }
    func minus (a: Double, b: Double){
        print(a - b)
    }
    
        // Умножение
    func mult (a: Int, b: Int){
        print(a * b)
    }
    func mult (a: Double, b: Int){
        print(a * Double(b))
    }
    func mult (a: Int, b: Double){
        print(Double(a) * b)
    }
    func mult (a: Double, b: Double){
        print(a * b)
    }
    
    // Деление
    func div (a: Int, b: Int){
        print(a / b)
    }
    func div (a: Double, b: Int){
        print(a / Double(b))
    }
    func div (a: Int, b: Double){
        print(Double(a) / b)
    }
    func div (a: Double, b: Double){
        print(a / b)
    }
    
    // 2. ВЫЧИСЛЕНИЕ СУММЫ ЦИФР ЧЕТЫРЕХЗНАЧНОГО ЧИСЛА:
    
    var fourLabelNumber = 3894
    
  
    // 3. ФУНКЦИЯ СРАВНЕНИЯ СТРОК: +
   let firstString = "acbn"
    let secondString = "njdk"
    func strings(a: String, b: String){
        if a == b {
            print("Equals")
            }
        if a != b{
            print("Not")
        }
        }
    
    // 4. ЦИКЛИЧЕСКИЙ ВЫЗОВ ФУНКЦИИ: +
    
    func cikleOne() {
        self.cikleTwo()
        print(" I am crush it !!! ")
    }
    func cikleTwo(){
        self.cikleOne()
        print(" I am too!!! ")
    }
    
    // 5. ФУНКЦИЯ ВОЗВЕДЕНИЯ В СТЕПЕНЬ С ДЕФОЛТНЫМ ПАРАМЕТРОМ
    
   
    func stepenka (a: Int, b: Int) {
        var numver = 0
        var rezic = a
        while numver < b - 1{
           rezic *= a
            numver += 1
        }
       print(rezic)
    
        
    }
        // 6. ФУНКЦИЯ ВЫЧИСЛЕНИЯ ФАКТОРИАЛА ЧИСЛА
    
    func factorial (a: Int){
        var count = 1
        var fourth = 1
        while count != a{
           fourth *=  (count + 1)
            count += 1
        }
        print(fourth)
    }



}
