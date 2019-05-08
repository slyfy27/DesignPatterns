//
//  CashContext.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/6.
//  Copyright © 2019 slyfy27. All rights reserved.
//

// Strategy + SimpleFactory

import Foundation

enum CashType {
    case normal
    case cashReturn(cMoney: Float, returnMoney: Float)
    case cashRebate(rebate: Float)
}

class CashContext {
    
    private var cash: CashProtocol = CashNormal()
    
    init(type: CashType) {
        switch type {
        case .normal:
            self.cash = CashNormal()
            break
        case .cashReturn(let cMoney, let returnMoney):
            self.cash = CashReturn(cMoney: cMoney, returnMoney: returnMoney)
            break
        case .cashRebate(let rebate):
            self.cash = CashRebate(rebate: rebate)
            break
        }
    }
    
    func cashResult(money: Float) -> Float {
        return self.cash.cashAlgorithm(money: money)
    }
}
