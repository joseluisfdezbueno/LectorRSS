//
//  UIImageView.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 01/10/2018.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

extension UIImageView {
    
    /// Applies custom style to the image view. Displays its image with round shape and border
    
    func setRoundImageStyle() {
        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = GenericColor.primaryGreen.cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
    
}
