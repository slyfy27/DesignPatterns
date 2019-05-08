//
//  Facade.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/8.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class Fund {
    
    func buy() {
        
    }
    
    func sell() {
        
    }
}

class Fund1: Fund {
    
    fileprivate var t1: Tickets?
    fileprivate var t2: Tickets?
    
    override init() {
        t1 = Tickets(name: "百事可乐")
        t2 = Tickets(name: "可口可乐")
    }
    
    override func buy() {
        t1?.buy()
        t2?.buy()
    }
    
    override func sell() {
        t1?.sell()
        t2?.sell()
    }
}

fileprivate class Tickets {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    fileprivate func buy() {
        print("买入\(self.name)")
    }
    
    fileprivate func sell() {
        print("卖出\(self.name)")
    }
}
