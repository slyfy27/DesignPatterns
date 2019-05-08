//
//  CashRebate.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/6.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class CashRebate: CashProtocol {
    
    var rebate: Float
    
    init(rebate: Float) {
        self.rebate = rebate
    }
    
    func cashAlgorithm(money: Float) -> Float {
        return money * self.rebate
    }
}
