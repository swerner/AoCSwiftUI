//
//  NQLView.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/24/20.
//

import SwiftUI

struct NQLView: View {
    @State private var directions: String = ""
    @State private var floor: Int = 0
    @State private var firstBasementPosition: Int = 0
    
    var body: some View {
        VStack {
            Text("2015")
            Text("Day 1: Not Quite Lisp")
            TextField("Paste in text", text: $directions).padding()
            Button(action: {
                let nql = NQL(self.directions)
                floor = nql.correctFloor()
                firstBasementPosition = nql.firstBasementPosition()
            }) {
                Text("Calculate")
            }
            Text("Floor: \(floor)");
            Text("First Basement Position: \(firstBasementPosition)")
        }.padding()
    }
}

struct NQLView_Previews: PreviewProvider {
    static var previews: some View {
        NQLView()
    }
}
