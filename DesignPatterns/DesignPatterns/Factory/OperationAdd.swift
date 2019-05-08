//
//  OperationAdd.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/6.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class OperationAdd: OperationProtocol {
    
    func operation(a: Int, b: Int) -> Int {
        return a + b;
    }
}
