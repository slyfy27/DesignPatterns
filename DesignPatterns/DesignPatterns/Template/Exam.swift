//
//  Exam.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/8.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class ExamPaper {
    
    func answerQuestion1() {
        print("选择题，问题一")
        print("答案：\(self.answer1())")
    }
    
    func answerQuestion2() {
        print("选择题，问题二")
        print("答案：\(self.answer2())")
    }
    
    fileprivate func answer1() -> String {
        return "c"
    }
    fileprivate func answer2() -> String {
        return "c"
    }
}

class ExamPaperA : ExamPaper {
    
    fileprivate override func answer1() -> String {
        return "a"
    }
    
    fileprivate override func answer2() -> String {
        return "a"
    }
}

class ExamPaperB : ExamPaper {
    
    fileprivate override func answer1() -> String {
        return "b"
    }
}
