
import Foundation
import UIKit

class Obstacle {
    let name: String
    var x: CGFloat
    var y: CGFloat
    let height: CGFloat
    let width: CGFloat
    let speed: Double

    init(name: String, x: CGFloat, y: CGFloat, height: CGFloat, width: CGFloat, speed: Double) {
        
        self.name = name
        self.x = x
        self.y = y
        self.height = height
        self.width = width
        self.speed = speed
}
    
}
