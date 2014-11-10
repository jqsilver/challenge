//
//  ViewController.swift
//  challenge
//
//  Created by Andy Bartholomew on 11/9/14.
//  Copyright (c) 2014 andyb productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeft: UILabel!
    @IBOutlet weak var bottomLeft: UILabel!
    @IBOutlet weak var topRight: UILabel!
    @IBOutlet weak var bottomRight: UILabel!

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var solutionLabel: UILabel!
    @IBOutlet weak var gotItButton: UIButton!

    var numbers: [Int]!
    var solution: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startNewCard()
    }

    func startNewCard() {
        generateCard()
        let spaces = [topLeft, bottomLeft, topRight, bottomRight]
        for (index, num) in enumerate(self.numbers) {
            spaces[index].text = "\(num)"
        }
    }

    func randomNumber() -> Int {
        return (random() % 9) + 1
    }

    func generateCard() {
        self.numbers = [randomNumber(), randomNumber(), randomNumber(), randomNumber()]
        self.solution = "whatever"
    }

    @IBAction func gotItPressed(sender: UIButton) {
        // Display solution
        self.solutionLabel.hidden = false
        self.solutionLabel.text = self.solution!

        self.gotItButton.hidden = true
        self.startButton.hidden = false
    }

    @IBAction func startPressed(sender: UIButton) {
        self.solutionLabel.hidden = true
        self.gotItButton.hidden = false
        self.startButton.hidden = true
        startNewCard()
    }

}

