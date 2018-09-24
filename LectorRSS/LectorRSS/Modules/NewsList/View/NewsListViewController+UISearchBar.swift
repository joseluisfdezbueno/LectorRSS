//
//  NewsListViewController+UISearchBar.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 23/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

extension NewsListViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Writing in searchbar....")
        
        if !searchText.isEmpty {
            presenter.filterNewsByTitle(searchText: searchText)
        } else {
            presenter.resetNewsFilter()
        }
    }

}
