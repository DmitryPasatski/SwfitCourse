//
//  ViewController.swift
//  GameForCat
//
//  Created by Dmitry Alexandrovich on 1.08.22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var cirkleButton: UIButton!
    // MARK: - ViewLife
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createView()
        // Do any additional setup after loading the view.
    }
    // MARK: - Actions
    @IBAction func cirkleButtonPressed(_ sender: UIButton) {
        createView()
    }
    // MARK: - Functions
    private func createView(){
        let originX = Int.random(in: 0..<(414-80))
        let originY = Int.random(in: 39..<818-80)
        cirkleButton.frame = CGRect(x: originX, y: originY, width: 80, height: 80)
        cirkleButton.backgroundColor = .red
        self.view.addSubview(cirkleButton)
        cirkleButton.layer.cornerRadius = cirkleButton.frame.size.width/2
    }
}

