//
//  OpertionFactory.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/6.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class OperationFactory: NSObject {
    
    class func creator(op: String) -> OperationProtocol? {
        var currentOp: OperationProtocol?
        switch op {
        case "+":
            currentOp = OperationAdd()
            break
        case "-":
            currentOp = OperationSub()
            break
        default:
            assertionFailure("Undefined Operation")
        }
        return currentOp
    }
}
