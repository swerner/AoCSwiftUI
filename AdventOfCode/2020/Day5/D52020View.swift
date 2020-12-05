//
//  D52020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/5/20.
//

import SwiftUI

class BoardingPassCollection: NSObject {
    var passes: [BoardingPass] = []
    
    init(_ lines: [String]) {
        for line in lines {
            passes.append(BoardingPass(line))
        }
    }
    
    func maxSeatId() -> Int {
        return passes.map{ $0.seatID() }.max()!
    }
}

struct D52020View: View {
    var body: some View {
        let lines = FileImporter(filename: "d52020-input").lines()
        let boardingPasses = BoardingPassCollection(lines)
        
        Text("Max Seat Id: \(boardingPasses.maxSeatId())")
    }
}
