//
//  AdapterCounter.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/10/20.
//

import Foundation

class AdapterCounter: NSObject {
    var adapters: [Int] = []
    
    init(_ adapters: [Int]) {
        self.adapters = adapters
    }
    
    func adapterValues() -> [Int] {
        var values: [Int] = [1]
        
        for adapterValue in adapters {
            var count = -1
            
            if adapters.contains(adapterValue + 1) {
                count += 1
            }
            
            if adapters.contains(adapterValue + 2) {
                count += 1
            }
            
            if adapters.contains(adapterValue + 3) {
                count += 1
            }
            
            values.append(count)
        }
        
        return values
    }
}
