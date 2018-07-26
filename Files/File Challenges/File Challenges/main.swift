//
//  main.swift
//  File Challenges
//
//  Created by Avinash Reddy on 7/25/18.
//  Copyright © 2018 Avinash Reddy. All rights reserved.
//

import Foundation

func printLines(fileName: String, lineCount: Int) {
    guard let input = try? String(contentsOfFile: fileName) else { return }
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    lines.reverse()
    
    for i in 0 ..< min(lines.count, lineCount) {
        print(lines[i])
    }
}

printLines(fileName: "sampleInput.txt", lineCount: 100)
