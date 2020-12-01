//
//  2020Day1View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/30/20.
//

import SwiftUI



struct Day1View2020: View {
    var body: some View {
        let lines = FileImporter(filename: "day1-input-2020").lines()
        let numbers = lines.map { Int($0)! }
        
        let results = TTFinder(entries: numbers)
        Text("First Result: \(results[0])")
        Text("Second Result: \(results[1])")
        Text("Correct Answer: \(results[0]*results[1])")
        
        let results2 = TTFinder2(entries: numbers)
        Text("First Result: \(results2[0])")
        Text("Second Result: \(results2[1])")
        Text("Third Result: \(results2[2])")
        Text("Correct Answer: \(results2[0] * results2[1] * results2[2])")
    }
}

struct Day1View2020_Previews: PreviewProvider {
    static var previews: some View {
        Day1View2020()
    }
}
