//
//  ViewController.swift
//  LessonTwo
//
//  Created by Dmitry Alexandrovich on 9.07.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.viewAll()
        print(" It's my propery \(Constants.myProperty)")
        Constants.myFunction()
        self.sum(a: 2.4, b: 3.5)
    }

    func viewAll(){
        self.firsting()
        print(sixth)
        self.seconding()
        print(seventh)
        self.thirding()
        print(eights)
    }
    

    func firsting(){
        let first = 1
        print(first)
    }
    func seconding(){
        let sec = 2
        print(sec)
    }
    func thirding(){
        let third = 3
        print(third)
    }
    func fourthing(){
        let fourth = 4
        print(fourth)
    }
    func fifting(){
        let fifth = 5
        print(fifth)
    }
        
       let sixth = 66
       let seventh = 77
       let eights = 88
       let ninth = 99
       let tenth = 1010
    
    // Перегрузка функций
    func sum(a: Int, b: Int){
        print(a + b)
    }
    func sum(a: Int, b: Double){
        print(Double(a) + b)
    }
    func sum(a: Double, b: Int){
        print(a + Double(b))
    }
    func sum(a: Double, b: Double){
        print(a + b)
    }
    
       
}

