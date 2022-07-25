//
//  ViewController.swift
//  LessonFour
//
//  Created by Dmitry Alexandrovich on 11.07.22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myLabel1: UILabel!
    
    @IBOutlet weak var myLabel2: UILabel!
    
    @IBOutlet weak var myLabel3: UILabel!
    
    @IBOutlet weak var myLabel4: UILabel!
    
    
    @IBOutlet weak var myButton1: UIButton!
    
    @IBOutlet weak var myButton4: UIButton!
    @IBOutlet weak var myButton3: UIButton!
    @IBOutlet weak var myButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.myLabel.text = "Hello world!"
        self.myButton.setTitle("Press me", for: .normal)
        
    }

    

    @IBAction func myButtonPressed(_ sender: UIButton) {
        self.myLabel.text = "Wow wow wow this text is changed! "
        let cageMetal = Cage(type: "Metal cage")
        let dog = Animal(type: "Dog", color: "Brown", weight: 40, name: "Tuzik", cage: cageMetal)
        Manager.shared.createFish()
        dog.eat()
        dog.show()
        
        
    }
    
    @IBAction func myButtonFirstPressed(_ sender: UIButton) {
        self.myLabel1.text = "Button first pressed! "
    }
    
    @IBAction func myButtonSecondPressed(_ sender: UIButton) {
        self.myLabel2.text = "Button second pressed! "
    }
    
    @IBAction func myButtonThirdPressed(_ sender: UIButton) {
        self.myLabel3.text = "Button third pressed! "
    }
    
    @IBAction func myButtonFourthPressed(_ sender: UIButton) {
        self.myLabel4.text = "Button first pressed! "
    }
    
}

