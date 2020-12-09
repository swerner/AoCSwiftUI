//
//  D92020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/8/20.
//

import SwiftUI

struct D92020View: View {
    var body: some View {
        var cypher = XMASCypher(FileImporter(filename: "d92020-input").lines())
        Text("Part 1").bold()
        Text("First Invalid Number: \(cypher.firstInvalidNumber())")
        Text("Part 2").bold().padding()
        let results = cypher.findContiguousSet(target: 133015568)
        Text("Contiguous set: \(results.min()! + results.max()!)")
    }
}
