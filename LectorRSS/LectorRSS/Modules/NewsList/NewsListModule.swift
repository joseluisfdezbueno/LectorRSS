//
//  NewsListModule.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

final class NewsListModule {
    
    static var view: NewsListViewController {
        let view = NewsListViewController(nibName: "NewsListViewController", bundle: nil)
        view.presenter = NewsListPresenter(view: view)
        
        return view
    }
    
}

extension NewsListModule {
    
    /// Texts to translate in the future

    enum Localizable {
        static let titleNavBar = "Noticias de Eol"
        static let backButtonNavBar = "Atrás"
        static let placeholderSearchBar = "Busca por título..."
    }
    
}
