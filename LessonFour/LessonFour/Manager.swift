//
//  Manager.swift
//  LessonFour
//
//  Created by Dmitry Alexandrovich on 19.07.22.
//

import Foundation
class Manager{
    

static let shared = Manager()
    
    private init() {}
    func createFish() {
        let cageGlass = Cage(type: "Glass cage")
        let fish = Animal(type: "Fish", color: "Gold", weight: 1, name: "Borik", cage: cageGlass)
        fish.eat()
        fish.show()
    }
    
}
