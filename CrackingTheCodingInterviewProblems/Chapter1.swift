//
//  Chapter1.swift
//  CrackingTheCodingInterviewProblems
//
//  Created by Leonard Li on 8/18/16.
//  Copyright © 2016 Objective Li Labs LLC. All rights reserved.
//

import Foundation

// Arrays and Strings

class Chapter1 {
    
    class func isPermutationOfPalindrome(string: String) -> Bool {
        
        // Create dictionary that counts the number of times a letter appears in the string
        var letterDictionary: [Character: Int] = [:]
        for char in string.characters {
            if var charCount = letterDictionary[char] {
                charCount += 1
                letterDictionary[char] = charCount
            } else {
                letterDictionary[char] = 1
            }
        }
        
        // Find the remainder of each of the counts to determine if this is a permutation of a palindrome
        var numberOfPairlessLetters = 0
        let letterCounts = letterDictionary.values
        for letterCount in letterCounts {
            
            // If remainder is odd, the letter has no pair in the string
            let remainder = letterCount % 2
            if remainder == 1 {
                numberOfPairlessLetters += 1
            }
            
            // If more than one letter has no pair, it can't be a permutation of a palindrome
            if numberOfPairlessLetters > 1 {
                print("\(string): false")
                return false
            }
        }
        print("\(string): true")
        return true
    }
}
