//
//  D72020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/6/20.
//

import SwiftUI

struct D72020View: View {
    var body: some View {
        let baggingSystem = BaggingSystem(FileImporter(filename: "d72020-input").lines())
        
        Text("Part 1").bold()
        let count = baggingSystem.bagsContaining(bagColor: "shiny gold")
        Text("Number of Bags Containing my Shiny Gold: \(count)")
        
        Text("Part 2").bold()
        let containedBags = baggingSystem.numBagsIn(bagColor: "shiny gold") - 1
        Text("Number of contained bags in shiny gold: \(containedBags)")
    }
}
