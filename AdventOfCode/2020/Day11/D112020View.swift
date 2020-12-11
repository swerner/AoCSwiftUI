//
//  D112020View.swift
//  AdventOfCode
//
//  Created by Scott Werner on 12/11/20.
//

import SwiftUI

struct D112020View: View {
    @State private var seatCount = 0
    @State private var seatDisplay: String = ""
    @State private var seatMap: SeatMap = SeatMap(FileImporter(filename: "d112020-input").lines())
    
    var body: some View {
        Text("Part 1").bold()
        Button(action: {
            seatDisplay = seatMap.display()
        }) {
            Text("Initial Display")
        }
        Button(action: {
            seatMap.step()
            seatDisplay = seatMap.display()
            seatCount = seatMap.occupiedSeatCount()
        } ) {
            Text("Step")
        }
        
        
        Text("Part 2").bold()
        
        Button(action: {
            seatMap.step2()
            seatDisplay = seatMap.display()
            seatCount = seatMap.occupiedSeatCount()
        }) {
            Text("Step")
        }
        
        Text("Occupied Seats: \(seatCount)")
        ScrollView {
            Text(seatDisplay).lineLimit(nil).font(.system(size: 14, design: .monospaced))
        }
        
    }
}
