//
//  ViewController.swift
//  HomeworkOne
//
//  Created by Dmitry Alexandrovich on 12.07.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // сумма отдельно целых и отдельно дробных частей чисел 2.5, 9.7, 6.9, 8.2
        // проверка вляется ли число четным

        let a = 2.5
        let b = 9.7
        let c = 6.9
        let d = 8.2

        let x = Int(a) + Int(b) + Int(c) + Int(d)
        print("Сумма целых чисел равна \(x)")

        let a1 = Int(a)
        let b1 = Int(b)
        let c1 = Int(c)
        let d1 = Int(d)
        let y = (a - Double(a1)) + (b - Double(b1)) + (c - Double(c1)) + (d - Double(d1))
        print("Сумма дробных значений равна \(Double(y))")

            // проверка на четность
        var t = 22  // Проверяемое число
        if t % 2 == 0 {
            print("\(t) четное")
        }else{
            print("\(t) не четное")
        }

        
    }


}

