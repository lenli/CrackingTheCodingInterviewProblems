//
//  ViewController.swift
//  CrackingTheCodingInterviewProblems
//
//  Created by Leonard Li on 8/18/16.
//  Copyright © 2016 Objective Li Labs LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Is String Permutation of a Palindrome?
        Chapter1.isPermutationOfPalindrome("testing")
        Chapter1.isPermutationOfPalindrome("aba")
        Chapter1.isPermutationOfPalindrome("aabbc")
        Chapter1.isPermutationOfPalindrome("aaaa")
        Chapter1.isPermutationOfPalindrome("aabbccaa")
        Chapter1.isPermutationOfPalindrome("aabbdccaa")
        Chapter1.isPermutationOfPalindrome("aabbdddcaa")
        Chapter1.isPermutationOfPalindrome("aabbdcaa")
        print("--------")
        
        // Return kth to last element in linked list
        let node1 = LinkedListNode(value: 1)
        let node2 = LinkedListNode(value: 2)
        let node3 = LinkedListNode(value: 3)
        let node4 = LinkedListNode(value: 4)
        let node5 = LinkedListNode(value: 5)
        let node6 = LinkedListNode(value: 6)
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        node5.next = node6
        
        let k = 2
        if let answer = Chapter2.kthToLastElement(node1, k: k) {
            print("k = \(k), kthToLastElement: \(answer.value)")
        } else {
            print("k = \(k), kthToLastElement: nil")
        }
        print("--------")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

