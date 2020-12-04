//
//  Day3MapView.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/3/20.
//

import SwiftUI

struct Day3MapView: View {
    //@State private var inputLines: [String] = FileImporter(filename: "day3-input-2020").lines()
    @State private var inputLines: [String] = FileImporter(filename: "day3-input-2020").lines()
    @State private var lines: [String] = FileImporter(filename: "day3-input-2020").lines()
    @State private var xPos: Int = 0
    @State private var yPos: Int = 0
    @State private var treeCount: Int = 0
    @State private var rightStep: Int = 3
    @State private var downStep: Int = 1
    
    func processInputLines(input: [String], xSlope: Int, ySlope: Int) -> [String] {
        let newLines = self.inputLines;
        var newInput = input
        
        for (index, _) in newLines.enumerated() {
            newInput[index] += newLines[index]
        }
        while self.yPos < newInput.count {
            while self.xPos < newInput[0].count && self.yPos < newInput.count {
                var newLine = Array(newInput[self.yPos])
                
                if newLine[self.xPos] == "." {
                    newLine[self.xPos] = "O"
                } else {
                    newLine[self.xPos] = "X"
                    self.treeCount += 1;
                }
                
                newInput[self.yPos] = String(newLine)
                
                self.xPos += xSlope
                self.yPos += ySlope
            }
            if self.xPos >= newInput[0].count {
                for (index, _) in newLines.enumerated() {
                    newInput[index] += newLines[index]
                }
            }
        }
        
        return newInput
    }
    
    var body: some View {
        TextField("Right: ", value: $rightStep, formatter: NumberFormatter())
        TextField("Down: ", value: $downStep, formatter: NumberFormatter())
        
        Button(action: {
            self.treeCount = 0
            self.xPos = 0
            self.yPos = 0
            self.lines = self.inputLines
            self.lines = processInputLines(input: self.lines, xSlope: self.rightStep, ySlope: self.downStep)
        }) {
            Text("Process")
        }
        
        Text("Tree Count \(self.treeCount)")
        
        ScrollView([.horizontal, .vertical]) {
                        VStack(spacing: 0) {
                            ForEach(lines, id: \.self) { line in
        
                                    Text(line)
                                }
                        }.padding(0)
                }
        
    }
}
