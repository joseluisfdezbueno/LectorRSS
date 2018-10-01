//
//  NewsDetailPresenter.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 25/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

final class NewsDetailPresenter {
    
    weak var view: NewsDetailViewControllerProtocol?
    private var router: NewsDetailRouterProtocol!
    
    private var news: News!
    
    init(view: NewsDetailViewController, news: News) {
        self.view = view
        self.news = news
        self.router = NewsDetailRouter(view: view)
    }
    
}

// MARK: - NewsDetailPresenterProtocol´s Implementation

extension NewsDetailPresenter: NewsDetailPresenterProtocol {
    
    /// Logic executed when the view waa load. Set the news in the view
    
    func viewDidLoad() {
        view?.setNews(news)
    }
    
    /// Open the web of the news
    
    func openNewsWeb() {
        if let webUrl = news.webUrl {
            router.presentNewsWeb(url: webUrl)
        }
    }
    
}
