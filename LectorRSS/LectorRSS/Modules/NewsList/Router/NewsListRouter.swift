//
//  NewsListRouter.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

final class NewsListRouter {
    
    weak private var view: NewsListViewController?
    
    init(view: NewsListViewController?) {
        self.view = view
    }
    
}

// MARK: - NewsListRouterProtocol´s Implementation

extension NewsListRouter: NewsListRouterProtocol {

    /// Presents "NewsDetail" view
    ///
    /// - Parameters:
    ///     - news: news to show details in "NewsDetail" view
    
    func pushNewsDetail(news: News) {
        let newsDetailView = NewsDetailModule.view(news: news)
        view?.navigationController?.pushViewController(newsDetailView, animated: true)
    }

}

