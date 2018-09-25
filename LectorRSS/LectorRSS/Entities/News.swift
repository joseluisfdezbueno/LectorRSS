//
//  News.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

class News {
    
    var title: String
    var description: String
    var image: String
    var webUrl: String
    
    init(title: String, description: String, image: String, webUrl: String) {
        self.title = title
        self.description = description
        self.image = image
        self.webUrl = webUrl
    }
    
}
