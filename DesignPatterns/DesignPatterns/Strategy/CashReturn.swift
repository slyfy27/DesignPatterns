//
//  CashReturn.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/6.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class CashReturn: CashProtocol {
    
    var cMoney: Float
    
    var returnMoney: Float
    
    init(cMoney: Float, returnMoney: Float) {
        self.cMoney = cMoney
        self.returnMoney = returnMoney
    }
    
    func cashAlgorithm(money: Float) -> Float {
        var tmpReturnMoney: Float = 0
        if money >= cMoney {
            var tmp: Float = money / cMoney
            tmp -= tmp.truncatingRemainder(dividingBy: 1)
            tmpReturnMoney = self.returnMoney * tmp;
        }
        return money - tmpReturnMoney;
    }
}
