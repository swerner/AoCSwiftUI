//
//  D82020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/7/20.
//

import SwiftUI

struct D82020View: View {
    @State private var accumulatorValue: Int = 0
    
    var body: some View {
        var instructionProcessor = InstructionProcessor(FileImporter(filename: "d82020-input").lines())
        
        Button(action: {
            instructionProcessor.runInstructions()
            accumulatorValue = instructionProcessor.accumulator
        }) {
            Text("Run Instructions")
        }
        
        Text("Part 1").bold()
        Text("Number of Instructions: \(instructionProcessor.instructions.count)")
        Text("Accumulator Value before loop: \(accumulatorValue)")
    }
}
