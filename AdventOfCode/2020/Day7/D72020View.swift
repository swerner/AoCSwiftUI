//
//  D72020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/6/20.
//

import SwiftUI

struct D72020View: View {
    var body: some View {
        let baggingSystem = BaggingSystem(FileImporter(filename: "D72020-Input").lines())
        
        Text("Part 1").bold()
        let count = baggingSystem.bagsContaining(bagColor: "shiny gold")
        Text("Number of Bags Containing my Shiny Gold: \(count)")
    }
}
