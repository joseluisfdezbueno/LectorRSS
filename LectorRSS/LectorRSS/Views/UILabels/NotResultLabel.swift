//
//  NotResultLabel.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 24/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

class NotResultLabel: UILabel {

    convenience init(rect: CGRect, text: String?) {
        self.init(frame: rect)
        self.text = text ?? NotResultLabel.Localizable.notResultsLabel
        self.textColor = GenericColor.standarText
        self.textAlignment = NSTextAlignment.center
    }
    
}

extension NotResultLabel {
    
    /// Texts to translate in the future
    
    enum Localizable {
        static let notResultsLabel = "No se encontraron resultados"
    }
    
}
