//
//  InstructionProcessor.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/8/20.
//

import Foundation

class InstructionProcessor: NSObject {
    class Instruction {
        let operation: String
        let argument: Int
        
        init(_ instruction: String) {
            let parts = instruction.split(separator: " ")
            operation = String(parts[0])
            argument = Int(parts[1])!
        }
    }
    
    var accumulator: Int = 0
    var currentInstructionPtr: Int = 0
    var visitedInstructionPositions: Set<Int> = []
    var instructions: [Instruction] = []
    
    init(_ steps: [String]) {
        for step in steps {
            self.instructions.append(Instruction(step))
        }
    }
    
    func runInstructions() {
        while true {
            let currentInstruction = instructions[currentInstructionPtr]
            
            let insertionResult = visitedInstructionPositions.insert(currentInstructionPtr)
            
            if !insertionResult.inserted {
                return
            }
            
            switch currentInstruction.operation {
            case "jmp":
                processJmp(currentInstruction.argument)
            case "acc":
                processAcc(currentInstruction.argument)
                currentInstructionPtr += 1
            case "nop":
                currentInstructionPtr += 1
            default:
                currentInstructionPtr += 1
            }
        }
    }
    
    func processJmp(_ amount: Int) {
        self.currentInstructionPtr += amount
    }
    
    func processAcc(_ amount: Int) {
        self.accumulator += amount
    }
}
