//
//  NewsListInteractor.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

final class NewsListInteractor: NSObject {
    
    weak private var delegate: NewsListInteractorDelegate?
    let feedUrl = "https://www.xatakandroid.com/tag/feeds/rss2.xml"
    
    init(delegate: NewsListInteractorDelegate) {
        self.delegate = delegate
    }
    
}

// MARK: - NewsListInteractorProtocol´s Implementation

extension NewsListInteractor: NewsListInteractorProtocol {
    
    /// Get the news list
    
    func getNewsList () {
        
        guard let feedUrl = URL(string: feedUrl) else  {
            return
        }
  
        let rssParserService = RssParserService()
        rssParserService.parseRss(delegate: self, feedUrl: feedUrl)
    }
    
}

// MARK: - RssParserServiceDelegate´s Implementation

extension NewsListInteractor: RssParserServiceDelegate {
    
    func onNewsReceived(_ news: [News]) {
        delegate?.onNewsReceived(news)
    }
    
}
