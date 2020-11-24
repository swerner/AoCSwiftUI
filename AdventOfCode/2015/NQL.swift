//
//  NQL.swift
//  Day 1: Not Quite Lisp
//  AdventOfCode
//
//  Created by Scott Werner on 11/23/20.
//

import Foundation

class NQL: NSObject {
    var directions: String;
    
    init(_ directions: String) {
        self.directions = directions;
    }
    
    func correctFloor() -> Int {
        let steps = Array(self.directions)
        
        var floor = 0
        
        for step in steps {
            if step == "(" {
                floor = floor + 1
            } else {
                floor = floor - 1
            }
            
        }
        
        return floor;
    }
    
    func firstBasementPosition() -> Int {
        let steps = Array(self.directions)
        var basementPosition = 1;
        var floor = 0;
        
        for step in steps {
            if step == "(" {
                floor = floor + 1
            } else {
                floor = floor - 1
            }
            
            if floor == -1 {
                return basementPosition
            }
            
            basementPosition = basementPosition + 1
        }
        
        return basementPosition
    }
}
