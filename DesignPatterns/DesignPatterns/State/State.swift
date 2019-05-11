//
//  State.swift
//  DesignPatterns
//
//  Created by 吴书颖 on 2019/5/9.
//  Copyright © 2019 slyfy27. All rights reserved.
//

import Foundation

class SunState {
    
    func showStatus(time: TimeState) {
        
    }
}

class SunRaiseState: SunState {
    
    override func showStatus(time: TimeState) {
        if time.hour < 12 {
            print("太阳升起了")
        } else {
            time.current = SunNoonState()
            time.showSunState()
        }
    }
}

class SunNoonState: SunState {
    override func showStatus(time: TimeState) {
        if time.hour < 18 {
            print("日当午")
        } else {
            time.current = SunSetState()
            time.showSunState()
        }
    }
}

class SunSetState: SunState {
    override func showStatus(time: TimeState) {
        print("太阳下山了,大家都该休息了")
    }
}

class TimeState {
    
    var current: SunState = SunRaiseState()
    
    var hour: Int = 0
    
    func showSunState() {
        self.current.showStatus(time: self)
    }
}
