//
//  WrappingPaperCalculator.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/24/20.
//

import Foundation

class WrappingPaperCalculator: NSObject {
    var length: Int
    var width: Int
    var height: Int
    var sides: Array<Int>
    
    init(length: Int, width: Int, height: Int) {
        self.length = length
        self.width = width
        self.height = height
        self.sides = [
            self.length * self.width,
            self.width * self.height,
            self.height * self.length
        ]
    }
    
    func smallestSide() -> Int {
        return sides.min()!
    }
    
    func sqft() -> Int {
        return sides.reduce(0, { memo, iter in
          memo + (2 * iter)
        }) + smallestSide()
    }
    
    func ribbonLength() -> Int {
        return bowSize() + shortestPerimeter()
    }
    
    func shortestPerimeter() -> Int {
        let values = [2*length, 2*width, 2*height]
        return values.reduce(0, +) - values.max()!
    }
    
    func bowSize() -> Int {
        return self.length * self.height * self.width
    }
}
