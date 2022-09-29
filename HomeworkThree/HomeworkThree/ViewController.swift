//
//  ViewController.swift
//  HomeworkThree
//
//  Created by Dmitry Alexandrovich on 10.07.22.
//
// Массив из кортежей var x = [(1,"x"), (4, "y"), (6,"a")]  - возвести Int в квадрат, отфильтровать только четные Int и упорядочить
// по строкам по возрастанию

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var x = [(1,"x"), (4, "y"), (6,"a")]
       
        print(x.sorted(by: {$0.1 < $1.1}).filter({$0.0 % 2 == 0}).map({(($0.0 * $0.0),$0.1)}))
      
            
    }
  
}


