//
//  String.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 30/09/2018.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

extension String {
    
    /// Removes html tags
    ///
    /// - Return: string without html tags
    
    func removeHtmlTag() -> String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: String.CompareOptions.regularExpression, range: nil)
    }
    
}
