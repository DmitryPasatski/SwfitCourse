//
//  ViewController.swift
//  CirkleMover
//
//  Created by Dmitry Alexandrovich on 3.08.22.
//

import UIKit



class ViewController: UIViewController {
    
    // MARK: - Labels / Buttons
    @IBOutlet weak var messeges: UILabel!
    @IBOutlet weak var upButton: UIButton!
    
    // MARK: - Enum
    enum Direction: String {
        case left = "left"
        case right = "right"
        case up = "up"
        case down = "down"
    }
    // MARK: - Let/var
    var cirkle = UIView()
    let step = CGFloat(20)
    let indent = CGFloat(10)
    override func viewDidLoad() {
        createCirkle()
        super.viewDidLoad()
        
    }
    // MARK: - Functions
    
    private  func createCirkle() {
        cirkle.frame = CGRect(x: 187, y: 374, width: 40, height: 40)
        cirkle.backgroundColor = .darkGray
        self.view.addSubview(cirkle)
        cirkle.layer.cornerRadius = cirkle.frame.size.width/2
    }
    
    
    private func move(direction: Direction){
        switch direction {
        case .left:
            if  self.cirkle.frame.origin.x >= indent{
                self.cirkle.frame.origin.x -= step
                messeges.text = "Moving \(direction.rawValue)"
            } else {
                messeges.text = "Moving is possible!"
            }
        case .right:
            if  self.cirkle.frame.origin.x <= view.frame.size.width - cirkle.frame.size.width - indent{
                self.cirkle.frame.origin.x += step
                messeges.text = "Moving \(direction.rawValue)"
            }else {
                messeges.text = "Moving is possible!"
            }
        case .up:
            if  self.cirkle.frame.origin.y >= 44 + indent{
                self.cirkle.frame.origin.y -= step
                messeges.text = "Moving \(direction.rawValue)"
            }else {
                messeges.text = "Moving is possible!"
            }
        case .down:
            if  self.cirkle.frame.origin.y <= upButton.frame.origin.y - cirkle.frame.size.height - indent {
                self.cirkle.frame.origin.y += step
                messeges.text = "Moving \(direction.rawValue)"
            }else {
                messeges.text = "Moving is possible!"
            }
        }
    }
    
    
    // MARK: - Actions
    
    @IBAction func circkleUP(_ sender: UIButton) {
        self.move(direction: .up)
    }
    @IBAction func circleDown(_ sender: UIButton) {
        self.move(direction: .down)
    }
    @IBAction func circkleLeft(_ sender: UIButton) {
        self.move(direction: .left)
    }
    @IBAction func cirkleRight(_ sender: UIButton) {
        self.move(direction: .right)
    }
    
}
