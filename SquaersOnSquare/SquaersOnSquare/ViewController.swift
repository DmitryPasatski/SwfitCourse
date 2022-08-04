//
//  ViewController.swift
//  SquaersOnSquare
//
//  Created by Dmitry Alexandrovich on 3.08.22.
//

import UIKit

class ViewController: UIViewController {
    let side: CGFloat = 40
    var x: CGFloat = 0
    var y: CGFloat = 44
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func canCreateView() -> Bool {
        if self.x + self.side > self.view.frame.size.width { return false }
        if self.y + self.side > self.view.frame.size.height { return false }
        
        return true
    }
    func addView() {
        let newView = UIView(frame: CGRect(x: self.x, y: self.y, width: self.side, height: self.side))
        newView.backgroundColor = randomColor()
        self.view.addSubview(newView)
    }
    func createView(){
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
    func randomColor() -> UIColor{
        
        let r = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let g = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let b = CGFloat(arc4random()) / CGFloat(UInt32.max)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    @IBAction func createSquarePressed(_ sender: UIButton) {
        createView()
    }
}

