//
//  DecoratorPatternsTests.swift
//  DesignPatternsTests
//
//  Created by 吴书颖 on 2019/5/8.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class DecoratorPatternsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let sbl = Person(name: "sbl")
        let ts: TShirts = TShirts()
        ts.decorate(component: sbl)
        let sh: Shoes = Shoes()
        sh.decorate(component: ts)
        sh.show()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
