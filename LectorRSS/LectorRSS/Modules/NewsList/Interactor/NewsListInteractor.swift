//
//  NewsListInteractor.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

class NewsListInteractor {
    
    weak private var delegate: NewsListInteractorDelegate?
    
    init(delegate: NewsListInteractorDelegate) {
        self.delegate = delegate
    }
    
}

// MARK: - NewsListInteractorProtocol´s Implementation

extension NewsListInteractor: NewsListInteractorProtocol {
    
    /// Get the news list
    
    func getNewsList () {
        
        // TODO: mocked
        var news: [News] = []
        
        var new = News(title: "Comiendo con gorilas", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "")
        
        news.append(new);
        
        new = News(title: "Comiendo con gorilas2", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "")
        
        news.append(new);
        
        new = News(title: "Comiendo con gorilas3", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "")
        
        news.append(new);
        
        new = News(title: "Comiendo con gorilas4", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "")
        
        news.append(new);
        
        delegate?.onNewsReceived(news);
    }
    
}
