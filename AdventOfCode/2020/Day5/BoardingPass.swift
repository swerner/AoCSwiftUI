//
//  BoardingPass.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/5/20.
//

import Foundation

extension Array {
    func left() -> Array<Element> {
        let midpoint = self.count / 2
        
        return Array(self[0..<midpoint])
    }
    
    func right() -> Array<Element> {
        let midpoint = self.count / 2
        return Array(self[midpoint...self.count-1])
    }
}

class BoardingPass: NSObject {
    let rowSteps: [Character]
    let columnSteps: [Character]
    let rowSeats: [Int] = Array(0...127)
    let columnSeats: [Int] = Array(0...7)
    
    init(_ pass: String) {
        let splitPass = Array(pass)
        rowSteps = Array(splitPass.prefix(7))
        columnSteps = Array(splitPass.suffix(3))
    }
    
    func row() -> Int {
        var currentSeatRange = rowSeats
        
        for step in rowSteps {
            if step == "F" {
                currentSeatRange = currentSeatRange.left()
            } else {
                currentSeatRange = currentSeatRange.right()
            }
        }
        
        return currentSeatRange[0]
    }
    
    func column() -> Int {
        var currentSeatRange = columnSeats
        
        for step in columnSteps {
            if step == "L" {
                currentSeatRange = currentSeatRange.left()
            } else {
                currentSeatRange = currentSeatRange.right()
            }
        }
        
        return currentSeatRange[0]
    }
    
    func seatID() -> Int {
        return (row() * 8) + column()
    }
}
