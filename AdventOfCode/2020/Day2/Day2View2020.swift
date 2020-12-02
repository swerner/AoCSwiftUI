//
//  Day2View2020.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/2/20.
//

import SwiftUI

struct Day2View2020: View {
    var body: some View {
        let lines = FileImporter(filename: "day2-input-2020").lines()
        let processor = PasswordsProcessor(lines: lines)
        
        Text("Part 1").bold()
        Text("Good Password Count: \(processor.validPasswordCount())")
        Text("Part 2").bold()
        Text("Good Password Count with New rules: \(processor.validPasswordCount2())")
    }
}
