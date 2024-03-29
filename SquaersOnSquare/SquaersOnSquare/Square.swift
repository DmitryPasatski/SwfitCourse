//
//  Square.swift
//  SquaersOnSquare
//
//  Created by Dmitry Alexandrovich on 3.08.22.
//

import Foundation
import UIKit
class Square: UIView {
    let x: Int
    let y: Int
    let width = 40
    let height = 40
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


