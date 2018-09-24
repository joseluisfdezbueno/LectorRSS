//
//  NewsListPresenter.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

class NewsListPresenter {
    
    weak var view: NewsListViewControllerProtocol?
    private var router: NewsListRouterProtocol!
    private var newsListInteractor: NewsListInteractorProtocol!

    var news: [News] = []
    
    init(view: NewsListViewController) {
        self.view = view
        self.router = NewsListRouter(view: view)
        self.newsListInteractor = NewsListInteractor(delegate: self)
    }
    
}

// MARK: - Privste Methods

extension NewsListPresenter {
    
    /// Load news list
    
    private func loadNewsList() {
        newsListInteractor.getNewsList()
    }
    
}

// MARK: - NewsListPresenterProtocol´s Implementation

extension NewsListPresenter: NewsListPresenterProtocol {
    
    /// Logic executed when the view wsa load. Fetch news list

    func viewDidLoad() {
        loadNewsList()
    }
    
    /// Logic executed when the user has selected a news. Present "NewsDeatil" view
    ///
    /// - Parameters:
    ///     - selectedNews: selected news to show details
    
    func newsWasSelected(selectedNews: News) {
        //view?.navigationItem.title = "atras"
        router.pushNewsDetail(news: selectedNews)
    }
    
    /// Filter news by title for search text entered by user and present to the view
    ///
    /// - Parameters:
    ///     - searchText: search text to filter
    
    func filterNewsByTitle(searchText: String) {
        let filteredNews = news.filter({ (auxNews) -> Bool in
            if auxNews.title.lowercased().contains(searchText.lowercased()) {
                return true
            } else {
                return false
            }
        })
        view?.showNews(filteredNews)
    }
    
    /// Reset news filter and present all news to the view
    
    func resetNewsFilter() {
        view?.showNews(news)
    }
    
}
