//
//  Finery.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/8.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class Finery: Person {
    
    fileprivate var component: Person?
    
    func decorate(component: Person) {
        self.component = component
    }
    
    override func show() {
        self.component?.show()
    }
}

class TShirts: Finery {
    
    override func show() {
        super.show()
        print("大 T shirt")
    }
}

class Shoes: Finery {
    
    override func show() {
        super.show()
        print("AJ 32")
    }
}
