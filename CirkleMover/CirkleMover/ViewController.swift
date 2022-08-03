//
//  ViewController.swift
//  CirkleMover
//
//  Created by Dmitry Alexandrovich on 3.08.22.
//

import UIKit

class ViewController: UIViewController {
    var cirkle = UIView()
  
    
    override func viewDidLoad() {
        createCirkle()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func createCirkle() {
        cirkle.frame = CGRect(x: 187, y: 374, width: 40, height: 40)
        cirkle.backgroundColor = .darkGray
        self.view.addSubview(cirkle)
        cirkle.layer.cornerRadius = cirkle.frame.size.width/2
    }
    @IBAction func circkleUP(_ sender: UIButton) {
        if  self.cirkle.frame.origin.y >= 44{
            self.cirkle.frame.origin.y -= 10
        }
    }
    @IBAction func circleDown(_ sender: UIButton) {
        if  self.cirkle.frame.origin.y <= 704{
            self.cirkle.frame.origin.y += 10
        }
    }
    
    @IBAction func circkleLeft(_ sender: UIButton) {
        if  self.cirkle.frame.origin.x >= 0{
            self.cirkle.frame.origin.x -= 10
        }
    }
    @IBAction func cirkleRight(_ sender: UIButton) {
        if  self.cirkle.frame.origin.x <= 367{
            self.cirkle.frame.origin.x += 10
        }
    }
    
}

//func createView(){
//    myView.frame = CGRect(x: 100, y: 50, width: 150, height: 150)
//    myView.backgroundColor = .magenta
//    self.view.addSubview(myView)
//
//    myView.layer.cornerRadius = myView.frame.size.width/2
//}
