//
//  Animals.swift
//  LessonFour
//
//  Created by Dmitry Alexandrovich on 18.07.22.
//

import Foundation

class Animal {
    
    var type: String
    var color: String
    var weight: Int
    var name: String
    var cage: Cage
    
    init(type: String, color: String, weight: Int, name: String, cage: Cage) {
        self.type = type
        self.color = color
        self.weight = weight
        self.name = name
        self.cage = cage
    }
    
    func eat(){
        print("\(name) eating")
    }
    
    func show(){
        print("\(name) sits in \(cage.type)")
    }
    
}
