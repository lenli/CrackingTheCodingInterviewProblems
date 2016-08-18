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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

