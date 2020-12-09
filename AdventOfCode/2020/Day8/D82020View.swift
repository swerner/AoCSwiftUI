//
//  D82020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/7/20.
//

import SwiftUI

struct D82020View: View {
    @State private var accumulatorValue: Int = 0
    @State private var correctAccumulatorValue: Int = 0
    
    var body: some View {
        var instructionProcessor = InstructionProcessor(FileImporter(filename: "d82020-input").lines())
        
        Button(action: {
            accumulatorValue = instructionProcessor.accAtLoop()
        }) {
            Text("Run Instructions")
        }
        
        Button(action: {
            correctAccumulatorValue = instructionProcessor.accWithCorrectInstruction()
        }) {
            Text("Find Correct Instruction")
        }
        
        Text("Part 1").bold()
        Text("Number of Instructions: \(instructionProcessor.instructions.count)")
        Text("Accumulator Value before loop: \(accumulatorValue)")
        
        Text("Part 2").bold()
        Text("Accumulator Value With Corrected Instruction: \(correctAccumulatorValue)")
    }
}
