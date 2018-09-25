//
//  NewDetailModule.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

final class NewsDetailModule {
    
    static func view(news: News) -> NewsDetailViewController {
        let view = NewsDetailViewController(nibName: "NewsDetailViewController", bundle: nil)
        view.presenter = NewsDetailPresenter(view: view, news: news)
        
        return view
    }
    
}

extension NewsDetailModule {
    
    /// Texts to translate in the future
    
    enum Localizable {
        static let openWebButton = "Visitar noticia"
    }
    
}
