//
//  ViewController.swift
//  LessonFour
//
//  Created by Dmitry Alexandrovich on 11.07.22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.myLabel.text = "Hello world!"
    }


}

