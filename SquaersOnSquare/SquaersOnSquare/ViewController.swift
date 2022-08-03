//
//  ViewController.swift
//  SquaersOnSquare
//
//  Created by Dmitry Alexandrovich on 3.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    var newSquare = UIView()
//    var x = Int.random(in: 0..<414)
//    var y = Int.random(in: 0..<814)

    //Int.random(in: 0..<414)
    
    static var random: UIColor {
            let r:CGFloat  = .random(in: 0...1)
            let g:CGFloat  = .random(in: 0...1)
            let b:CGFloat  = .random(in: 0...1)
            return UIColor(red: r, green: g, blue: b, alpha: 1)
        }
    var colour = random
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    func createSquare(){
//        newSquare.frame = CGRect(x: 0, y: 44, width: 40, height: 40)
//
//        newSquare.backgroundColor = colour
//        self.view.addSubview(newSquare)
//    }
    func createSquare() {
        var x = 0
        var y = 44
        if x < 400 {
            x += 40
            if x == 400{
                x = 0}
        }
        newSquare.frame = CGRect(x: x, y: y, width: 40, height: 40)
        newSquare.backgroundColor = colour
        self.view.addSubview(newSquare)
    }
    
    @IBAction func createSquarePressed(_ sender: UIButton) {
        createSquare()
    }
    
    
}

