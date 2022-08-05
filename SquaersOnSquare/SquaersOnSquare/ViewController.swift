//
//  ViewController.swift
//  SquaersOnSquare
//
//  Created by Dmitry Alexandrovich on 3.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Buttons and Lables
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var minusSiazeButton: UIButton!
    @IBOutlet weak var plusSizeButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    
    // MARK: - Enum
    enum Size{
        case bigger
        case smaller
    }

    // MARK: - Let/var
    var side: CGFloat = 40
    var x: CGFloat = 0
    var y: CGFloat = 44
    let arrayColors = [
        UIColor.red,
        UIColor.blue,
        UIColor.green,
        UIColor.orange,
        UIColor.cyan,
        UIColor.brown
        
    ]
    let nameColors = [
    "Red",
    "Blue",
    "Green",
    "Orange",
    "Cayan",
    "Brown"
    ]
    
    
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        sizeLabel.text = "\(side)"
        
        super.viewDidLoad()
    }
    // MARK: - Functions
    
    
    private func changeSize(size: Size){
        switch size {
        case .bigger:
            side += 10
        case .smaller:
            side -= 10
        }
    }
    
    private  func canCreateView() -> Bool {
        if self.x + self.side > self.view.frame.size.width { return false }
        if self.y + self.side > sizeLabel.frame.origin.y { return false }
        
        return true
    }

    private func addView() {
        let indexColor = Int.random(in: 0...arrayColors.count - 1)
        let newView = UIView(frame: CGRect(x: self.x, y: self.y, width: self.side, height: self.side))
        let newLabel = UILabel(frame: CGRect(x: self.x, y: self.y, width: self.side - 5, height: self.side - 5))
        newLabel.backgroundColor = arrayColors[indexColor]
        newView.backgroundColor = .clear
        newLabel.text = "\(nameColors[indexColor])"
        self.view.addSubview(newView)
        self.view.addSubview(newLabel)
    }
    private func createView(){
        if canCreateView(){
            
            addView()
            self.x += self.side
            self.createView()
        } else if self.x + self.side > self.view.frame.size.width{
            self.x = 0
            self.y += self.side
            if canCreateView() {
                self.createView()
            }
        }
    }
    private func randomColor() -> UIColor{
        
        let r = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let g = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let b = CGFloat(arc4random()) / CGFloat(UInt32.max)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    // MARK: - Actions
    @IBAction func createSquarePressed(_ sender: UIButton) {
        createView()
        self.x = 0
        self.y = 44
    }
    @IBAction func minusSizeButtonPressed(_ sender: UIButton) {
        changeSize(size: .smaller)
        sizeLabel.text = "\(side)"
        if self.side == 0 {
            minusSiazeButton.isHidden = true
            createButton.isHidden = true
        }
    }
    @IBAction func plusSizeButtonPressed(_ sender: UIButton) {
        changeSize(size: .bigger)
        sizeLabel.text = "\(side)"
        if side > 0 {
                minusSiazeButton.isHidden = false
                createButton.isHidden = false
        }
        }
        }
    

