//
//  Chapter2.swift
//  CrackingTheCodingInterviewProblems
//
//  Created by Leonard Li on 8/19/16.
//  Copyright © 2016 Objective Li Labs LLC. All rights reserved.
//

import Foundation

// Linked Lists

public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?
    
    public init(value: T) {
        self.value = value
    }
}

public class Chapter2 {

    // Iterative Solution
    public class func kthToLastElement(head: LinkedListNode<Int>?, k: Int) -> LinkedListNode<Int>? {
        var runner = head
        var element = head
        for _ in 0...k {
            if let next = runner?.next {
                runner = next
            } else {
                return nil
            }
        }
        while runner != nil {
            runner = runner?.next
            element = element?.next
        }
        return element
    }
}
