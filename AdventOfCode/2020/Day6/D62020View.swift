//
//  D62020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/5/20.
//

import SwiftUI

class CustomsDeclarationCollection: NSObject {
    var declarations: [CustomsDeclaration] = []
    
    init(_ lines: [String]) {
        var tempLines: [String] = []
        
        for line in lines {
            if line.isEmpty {
                declarations.append(CustomsDeclaration(tempLines))
                tempLines = []
            } else {
                tempLines.append(line)
            }
        }
        
        declarations.append(CustomsDeclaration(tempLines))
    }
    
    func totalYesCount() -> Int {
        return declarations.reduce(0, { memo, iter in
            return memo + iter.yesCount()
        })
    }
}

struct D62020View: View {
    var body: some View {
        let declarations = CustomsDeclarationCollection(FileImporter(filename: "d62020-input").lines())
        
        Text("Day 6").bold()
        Text("Total Yes Count: \(declarations.totalYesCount())")
    }
}
