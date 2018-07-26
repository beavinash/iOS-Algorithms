//
//  main.swift
//  Log Messages
//
//  Created by Avinash Reddy on 7/25/18.
//  Copyright © 2018 Avinash Reddy. All rights reserved.
//

import Foundation

func logMessage(log message: String, to logFile: String) {
    var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
    existingLog.append("\(Date()): \(message)\n")
    
    do {
        try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write to log: \(error.localizedDescription)")
    }
}

logMessage(log: "Function is working", to: "myFile")

func documentDirectory1() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

func saveJPEGS(in directory: String) -> [String] {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    guard let files = try? fm.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else {return []}
    var jpegs = [String]()
    for file in files {
        if file.pathExtension == "jpeg" || file.pathExtension == "jpg" {
            guard let attributes = try? fm.attributesOfItem(atPath: file.path) else { continue }
            guard let creationDate = attributes[.creationDate] as? Date else { continue }
            if creationDate > Date(timeIntervalSinceNow: -60 * 60 * 48) {
                jpegs.append(file.lastPathComponent)
            }
        }
    }
    return jpegs
}

func copyRecursively(source: String, destination: String) -> Bool {
    let fm = FileManager.default
    var isDirectory: ObjCBool = false
    
    guard fm.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else {
        return false
    }
    
    let sourceURL = URL(fileURLWithPath: source)
    let destinationURL = URL(fileURLWithPath: destination)
    
    do {
        try fm.copyItem(at: sourceURL, to: destinationURL)
    } catch {
        print("Copy failed: \(error.localizedDescription)")
        return false
    }
    
    return true
}


func countWords(fileName: String, count: String) -> Int {
    guard let inputString = try? String(contentsOfFile: fileName) else { return 0 }
    var nonLetters = CharacterSet.letters.inverted
    nonLetters.remove("'")
    
    let allWorlds = inputString.components(separatedBy: nonLetters)
    let wordSet = NSCountedSet(array: allWorlds)
    
    return wordSet.count(for: count)
}
