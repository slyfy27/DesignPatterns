//
//  Person.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/8.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class Person {
    var person: Person?
    
    let name: String
    
    init() {
        self.name = ""
    }
    
    init(name: String) {
        self.name = name
    }
    
    func show() {
        print("装扮的人\(name)")
    }
}
