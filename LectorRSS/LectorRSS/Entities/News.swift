//
//  News.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

class News {

    var title: String?
    var body: String?
    var imageUrl: String?
    var image: Data?
    var webUrl: String?
    
    init(title: String?, body: String?, imageUrl: String?, image: Data?, webUrl: String?) {
        self.title = title
        self.body = body
        self.imageUrl = imageUrl
        self.image = image
        self.webUrl = webUrl
    }

    convenience init() {
        self.init(title: nil, body: nil, imageUrl: nil, image: nil, webUrl: nil)
    }

}

