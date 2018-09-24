//
//  NewsListProtocols.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 24/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

/// View´s Protocol

protocol NewsListViewControllerProtocol: class {
    
    func showNews(_ news: [News])
    
}

/// Presenter´s Protocol

protocol NewsListPresenterProtocol: class {
    
    func viewDidLoad()
    func newsWasSelected(selectedNews: News)
    func filterNewsByTitle(searchText: String)
    func resetNewsFilter()
    
}

/// Router´s Protocol

protocol NewsListRouterProtocol: class {
    
    func pushNewsDetail(news: News)
    
}

/// Interactor´s Protocol

protocol NewsListInteractorProtocol: class {
    
    func getNewsList()
    
}

/// Interactor´s Delegate

protocol NewsListInteractorDelegate: class {
    func onNewsReceived(_ news: [News])
    //func onNewsError(_ error: Error)
}
