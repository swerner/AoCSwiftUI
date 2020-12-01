//
//  TTFinder.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/1/20.
//

import Foundation

func TTFinder(entries: [Int], offset: Int = 0) -> [Int] {
    for entry in entries {
        let target = 2020 - entry - offset
        
        if entries.contains(target) {
            return [entry, target]
        }
    }
    
    return [0,0]
}

func TTFinder2(entries: [Int]) -> [Int] {
    for entry in entries {
        let results = TTFinder(entries: entries, offset: entry)
        if results != [0,0] {
            return [entry, results[0], results[1]]
        }
    }
    
    return [0,0,0]
}
