//
//  NewsDetailProtocols.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 25/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

/// View´s Protocol

protocol NewsDetailViewControllerProtocol: class {
    
    func setNews(_ news: News)
    
}

/// Presenter´s Protocol

protocol NewsDetailPresenterProtocol: class {
    
    func viewDidLoad()
    func openNewsWeb()
    
}

///// Router´s Protocol

protocol NewsDetailRouterProtocol: class {

    func presentNewsWeb(url: String)

}

