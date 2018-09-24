//
//  NewsListViewController+UITableViews.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

extension NewsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        guard news.count > 0 else {
            let rect = CGRect(x: 0, y: 0,
                              width: tableView.bounds.size.width,
                              height: tableView.bounds.size.height)
            tableView.backgroundView = NotResultLabel(rect: rect, text: nil)
            tableView.separatorStyle = .none
            return 0
        }
        tableView.backgroundView = nil
        tableView.separatorStyle = .singleLine
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let news = self.news[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NewsListCell", for: indexPath) as? NewsListTableViewCell {
            
            cell.bind(news: news)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.newsWasSelected(selectedNews: news[indexPath.row])
        print("News number \(indexPath.row) was selected")
    }
    
}
