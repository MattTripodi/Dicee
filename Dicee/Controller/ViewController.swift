//
//  ViewController.swift
//  Dicee
//
//  Created by Matt Tripodi on 10/11/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// Outlets
	@IBOutlet weak var diceImageView1: UIImageView!
	@IBOutlet weak var diceImageView2: UIImageView!
	
	// Variables
	var randomDiceIndex1: Int = 0
	var randomDiceIndex2: Int = 0
	
	let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func rollButtonPressed(_ sender: UIButton) {

		randomDiceIndex1 = Int(arc4random_uniform(6))
		randomDiceIndex2 = Int(arc4random_uniform(6))
		
		print(randomDiceIndex1)
		print(randomDiceIndex2)
		
		diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
		diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
	}
}

