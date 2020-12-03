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
    
    func processInputLines(input: [String]) -> [String] {
        let newLines = self.inputLines;
        var newInput = input
        
        for (index, _) in newLines.enumerated() {
            newInput[index] += newLines[index]
        }
        
        while self.xPos < self.lines[0].count && self.yPos < newInput.count {
            
            var newLine = Array(newInput[self.yPos])
            
            if newLine[self.xPos] == "." {
                newLine[self.xPos] = "O"
            } else {
                newLine[self.xPos] = "X"
                self.treeCount += 1;
            }
            
            newInput[self.yPos] = String(newLine)
            
            self.xPos += 3
            self.yPos += 1
        }
        
        return newInput
    }
    
    var body: some View {
        Button(action: {
            self.lines = processInputLines(input: self.lines)
        }) {
            Text("Process")
        }
        
        Text("Tree Count \(self.treeCount)")
        Text("xPos: \(self.xPos)")
        
        ScrollView([.horizontal, .vertical]) {
                VStack(spacing: 0) {
                    ForEach(lines, id: \.self) { line in
                        
                            Text(line)
                        }
                }.padding(0)
        }
    }
}
