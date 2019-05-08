//
//  FactoryPatternsTests.swift
//  DesignPatternsTests
//
//  Created by 吴书颖 on 2019/5/6.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class FactoryPatternsTests: XCTestCase {
    
    var a: Int = 2
    var b: Int = 3

    override func setUp() {
        a = 2
        b = 1
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() {
        guard let op: OperationProtocol = OperationFactory.creator(op: "+") else {
            XCTAssertNil("Undefined operation", "operation must be implement");
            return
        }
        let result = op.operation(a: a, b: b)
        print(result)
    }
    
    func testSub() {
        guard let op: OperationProtocol = OperationFactory.creator(op: "-") else {
            XCTAssertNil("Undefined operation", "operation must be implement");
            return
        }
        let result = op.operation(a: a, b: b)
        print(result)
    }
}
