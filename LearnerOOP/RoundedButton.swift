//
//  RoundedButton.swift
//  LearnerOOP
//
//  Created by Vebby Clarissa on 15/05/19.
//  Copyright © 2019 Vebby Clarissa. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() { //dipanggil ketika UIButton yang dipake dipanggil di aplikasi kita
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        layer.cornerRadius = 5
        
    }
}

