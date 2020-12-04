//
//  ContentView.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = "2020";
    
    
    var body: some View {
        VStack {
            
            NavigationView {
                VStack {
                    Text("Years")
                    NavigationLink(destination: AoC2015View(), tag: "2015", selection: $selection) {
                        Text("2015")
                    }
                    NavigationLink(destination: Text("2016"), tag: "2016", selection: $selection) {
                        Text("2016")
                    }
                    NavigationLink(destination: Text("2017"), tag: "2017", selection: $selection) {
                        Text("2017")
                    }
                    NavigationLink(destination: Text("2018"), tag: "2018", selection: $selection) {
                        Text("2018")
                    }
                    NavigationLink(destination: Text("2019"), tag: "2019", selection: $selection) {
                        Text("2019")
                    }
                    NavigationLink(destination: AoC2020View(), tag: "2020", selection: $selection) {
                        Text("2020")
                    }
                }
            }
        }
    }
}
