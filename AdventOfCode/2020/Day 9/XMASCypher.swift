//
//  XMASCypher.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/9/20.
//

import Foundation

class XMASCypher: NSObject {
    var currentIndex: Int
    let preamble: Int
    
    let allData: [Int]
    
    init(_ lines: [String], preamble: Int = 25) {
        self.preamble = preamble
        self.currentIndex = preamble
        
        self.allData = lines.map { Int($0)! }
    }
    
    static func isValid(candidate: Int, numberList: [Int]) -> Bool {
        for number in numberList {
            if numberList.contains(candidate - number) && (candidate - number) != number {
                return true
            }
        }
        
        return false
    }
    
    func candidateNumberList() -> [Int] {
        return Array(allData[self.currentIndex-(self.preamble)...self.currentIndex-1])
    }
    
    func firstInvalidNumber() -> Int {
        while currentIndex <= allData.count {
            if XMASCypher.isValid(candidate: self.allData[self.currentIndex], numberList: candidateNumberList()) {
                currentIndex += 1
            } else {
                return self.allData[self.currentIndex]
            }
        }
        
        return -1
    }
}
