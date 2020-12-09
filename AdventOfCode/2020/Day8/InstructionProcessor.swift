//
//  InstructionProcessor.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/8/20.
//

import Foundation

class InstructionProcessor: NSObject {
    class Instruction: NSObject {
        var operation: String
        let argument: Int
        
        init(_ instruction: String) {
            let parts = instruction.split(separator: " ")
            operation = String(parts[0])
            argument = Int(parts[1])!
        }
    }
    
    class InstructionRunner: NSObject {
        var accumulator: Int = 0
        var currentInstructionPtr: Int = 0
        var visitedInstructionPositions: Set<Int> = []
        var instructions: [Instruction] = []
        
        init(_ instructions: [Instruction]) {
            self.instructions = instructions
        }
        
        func runInstructions() -> Bool {
            while true {
                let currentInstruction = instructions[currentInstructionPtr]
                
                let insertionResult = visitedInstructionPositions.insert(currentInstructionPtr)
                
                if !insertionResult.inserted {
                    return false
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
                
                if currentInstructionPtr >= instructions.count {
                    return true
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
    
    var accumulator: Int = 0
    var currentInstructionPtr: Int = 0
    var visitedInstructionPositions: Set<Int> = []
    var instructions: [Instruction] = []
    
    init(_ steps: [String]) {
        for step in steps {
            self.instructions.append(Instruction(step))
        }
    }
    
    func accAtLoop() -> Int {
        var instructionRunner = InstructionRunner(self.instructions)
        instructionRunner.runInstructions()
        
        return instructionRunner.accumulator
    }
    
    func flipInstruction(position: Int, instructionList: [Instruction]) -> [Instruction] {
        let instructionToFlip = instructionList[position]
        var newInstruction: Instruction
        
        if instructionToFlip.operation == "jmp" {
            newInstruction = Instruction("nop \(instructionToFlip.argument)")
        } else {
            newInstruction = Instruction("jmp \(instructionToFlip.argument)")
        }
        
        var newInstructionList = instructionList
        newInstructionList[position] = newInstruction
        
        return newInstructionList
    }
    
    func accWithCorrectInstruction() -> Int {
        var potentialPositions: [Int] = []
        
        for (index, instruction) in instructions.enumerated() {
            if instruction.operation == "jmp" || instruction.operation == "nop" {
                potentialPositions.append(index)
            }
        }
        
        for position in potentialPositions {
            let instructionsToRun = flipInstruction(position: position, instructionList: self.instructions)
            var instructionRunner = InstructionRunner(instructionsToRun)
            
            if (instructionRunner.runInstructions()) {
                return instructionRunner.accumulator
            }
        }
        
        return -1;
    }
}
