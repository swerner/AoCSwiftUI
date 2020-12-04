//
//  Day4View2020.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/3/20.
//

import SwiftUI

struct Day4View2020: View {
    var body: some View {
        let lines = FileImporter(filename: "day4-input-2020").lines()
        let processor = PassportProcessor(lines: lines)
        
        Text("Part 1").bold()
        Text("Total Passports Count: \(processor.passports.count)")
        //Text(processor.passportData())
        Text("Valid Passport Count: \(processor.validPassportCount())")
    }
}
