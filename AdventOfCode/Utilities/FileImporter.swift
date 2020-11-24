//
//  FileImporter.swift
//  AdventOfCode
//
//  Created by Scott Werner on 11/24/20.
//

import Foundation

class FileImporter: NSObject {
    var contents: String
    
    init(filename: String) {
        if let filepath = Bundle.main.path(forResource: filename, ofType: "txt") {
            do {
                self.contents = try String(contentsOfFile: filepath)
            } catch {
                self.contents = ""
            }
        } else {
            self.contents = ""
        }
    }
    
    func lines() -> Array<String> {
        var lines = [String]()
        
        self.contents.enumerateLines { (line, stop) -> () in
            lines.append(line)
        }
        return lines
    }
}
