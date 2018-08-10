import UIKit

func reverseCharacters(_ string: inout String, from startIndex: String.Index, until endIndex: String.Index) {
    var leftIndex  = startIndex
    var rightIndex = string.index(before: endIndex)
    
    // walk towards the middle, from both sides
    while leftIndex < rightIndex {
        
        // swap the left char and right char
        let leftChar  = string[leftIndex]
        let rightChar = string[rightIndex]
        
        string.replaceSubrange(leftIndex...leftIndex, with: String(rightChar))
        string.replaceSubrange(rightIndex...rightIndex, with: String(leftChar))
        
        leftIndex  = string.index(after: leftIndex)
        rightIndex = string.index(before: rightIndex)
    }
    
}

func reverseWords(_ message: inout String) {
    
    // first we reverse all the characters in the message
    reverseCharacters(&message, from: message.startIndex, until: message.endIndex)
    
    // this gives us the right word order
    // but with each word backward
    // now we'll make the words forward again
    // by reversing each word's characters
    
    // we hold the index of the *start* of the current word
    // as we look for the *end* of the current word
    var currentWordStartIndex = message.startIndex
    for i in message.indices {
        
        // found the end of the current word!
        if message[i] == " " {
            
            // the next word's start is one character ahead
            reverseCharacters(&message, from: currentWordStartIndex, until: i)
            currentWordStartIndex = message.index(after: i)
        }
    }
    
    // now we just need to reverse the last word
    reverseCharacters(&message, from: currentWordStartIndex, until: message.endIndex)
}



