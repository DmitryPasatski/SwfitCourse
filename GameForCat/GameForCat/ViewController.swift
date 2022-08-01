//
//  ViewController.swift
//  GameForCat
//
//  Created by Dmitry Alexandrovich on 1.08.22.
//

import UIKit

class ViewController: UIViewController {

  
    let myView = UIView()

    @IBOutlet weak var createButton: UIButton!
    override func viewDidLoad() {
        createButton.isHidden = true
        super.viewDidLoad()
        self.createView()
        // Do any additional setup after loading the view.
    }

    @IBAction func createButtonPressed(_ sender: UIButton) {
        self.createView()
    }
    @IBAction func tapTap(_ sender: UITapGestureRecognizer) {
        self.createView()
    }
    
    @IBAction func tapTapTap(_ sender: Any) {
        self.createView()
    }
    
    func createView(){
        let originX = Int.random(in: 0..<(414-80))
        let originY = Int.random(in: 39..<818-80)
        myView.frame = CGRect(x: originX, y: originY, width: 80, height: 80)
        myView.backgroundColor = .red
        self.view.addSubview(myView)
        myView.layer.cornerRadius = myView.frame.size.width/2
    }
}

