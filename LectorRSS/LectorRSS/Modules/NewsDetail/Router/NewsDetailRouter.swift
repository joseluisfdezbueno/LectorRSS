//
//  NewsDetailRouter.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 25/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

final class NewsDetailRouter {
    
    weak private var view: NewsDetailViewController?
    
    init(view: NewsDetailViewController?) {
        self.view = view
    }
    
}

// MARK: - NewsListRouterProtocol´s Implementation

extension NewsDetailRouter: NewsDetailRouterProtocol {
    
    /// Presents the web of the news
    ///
    /// - Parameters:
    ///     - url: news web url
    
    func presentNewsWeb(url: String) {
        if let url = URL(string: url) {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
}

