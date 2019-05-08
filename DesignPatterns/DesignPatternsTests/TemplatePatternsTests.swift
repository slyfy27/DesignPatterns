//
//  TemplatePatternsTests.swift
//  DesignPatternsTests
//
//  Created by 吴书颖 on 2019/5/8.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class TemplatePatternsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let paperA: ExamPaperA = ExamPaperA()
        paperA.answerQuestion1()
        paperA.answerQuestion2()
        let paperB: ExamPaperB = ExamPaperB()
        paperB.answerQuestion1()
        paperB.answerQuestion2()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
