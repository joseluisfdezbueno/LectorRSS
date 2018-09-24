//
//  NewsListPresenter+NewsListInteractorDelegate.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 23/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

extension NewsListPresenter: NewsListInteractorDelegate {
    
    func onNewsReceived(_ news: [News]) {
        self.news = news
        view?.showNews(news)
    }
    
}
