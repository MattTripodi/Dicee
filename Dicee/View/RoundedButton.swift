//
//  RoundedButton.swift
//  Dicee
//
//  Created by Matt Tripodi on 10/11/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

	override func awakeFromNib() {
		super.awakeFromNib()
		self.layer.cornerRadius = 5.0
	}

}
