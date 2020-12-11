//
//  D102020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/9/20.
//

import SwiftUI

func OneCount(_ adapters: [Int]) -> Int {
    var total = 1
    
    for (index, element) in adapters.enumerated() {
        if index != 0 {
            if (element - adapters[index-1]) == 1 {
                total += 1
            }
        }
    }
    
    return total
}

func TwoCount(_ adapters: [Int]) -> Int {
    var total = 0
    
    for (index, element) in adapters.enumerated() {
        if index != 0 {
            if (element - adapters[index-1]) == 2 {
                total += 1
            }
        }
    }
    
    return total
}

func ThreeCount(_ adapters: [Int]) -> Int {
    var total = 1
    
    for (index, element) in adapters.enumerated() {
        if index != 0 {
            if (element - adapters[index-1]) == 3 {
                total += 1
            }
        }
    }
    
    return total
}

struct D102020View: View {
    var body: some View {
        let adapters = FileImporter(filename: "d102020-input-test").lines().map { Int($0)! }.sorted()
        
        Text("Part 1").bold()
        Text("One Count: \(OneCount(adapters))")
        Text("Two Count: \(TwoCount(adapters))")
        Text("Three Count: \(ThreeCount(adapters))")
        
        Text("Part 2").bold()
        Text("Adapter Values: \(AdapterCounter(adapters).adapterValues().map { String($0) }.joined(separator: ","))")
        Text("Value: \(AdapterCounter(adapters).adapterValues().reduce(0, +))")
    }
}
