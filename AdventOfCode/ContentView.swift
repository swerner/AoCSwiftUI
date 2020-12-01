//
//  ContentView.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            
            NavigationView {
                VStack {
                    Text("Years")
                    NavigationLink(destination: AoC2015View()) {
                        Text("2015")
                    }
                    NavigationLink(destination: Text("2016")) {
                        Text("2016")
                    }
                    NavigationLink(destination: Text("2017")) {
                        Text("2017")
                    }
                    NavigationLink(destination: Text("2018")) {
                        Text("2018")
                    }
                    NavigationLink(destination: Text("2019")) {
                        Text("2019")
                    }
                    NavigationLink(destination: AoC2020View()) {
                        Text("2020")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
