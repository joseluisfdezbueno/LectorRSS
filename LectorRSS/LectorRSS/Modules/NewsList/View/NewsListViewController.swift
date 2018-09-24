//
//  NewsListViewController.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

class NewsListViewController: UIViewController {

    @IBOutlet weak private var newsTableView: UITableView!
    @IBOutlet weak private var newsSearchBar: UISearchBar!
    
    var presenter: NewsListPresenterProtocol!
    var news: [News] = [] {
        didSet {
            newsTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTableView.dataSource = self
        newsTableView.delegate = self
        newsTableView.register(UINib(nibName: "NewsListTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsListCell")
        newsSearchBar.delegate = self
        
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setNavigationBar()
        setTexts()
    }
    
}

// MARK: - Private methods

extension NewsListViewController {
    
    /// Sets the default style of the navigation bar
    
     private func setNavigationBar() {
        //navigationController?.navigationBar.tintColor = GenericColor.primaryGreen
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: GenericColor.primaryGreen]
        navigationController?.navigationBar.barTintColor = GenericColor.primaryGray
        
        title = NewsListModule.Localizable.titleNavBar
    }

    /// Sets the default text of view elements

    private func setTexts() {
        newsSearchBar.placeholder = NewsListModule.Localizable.placeholderSearchBar
    }
    
}

// MARK: - NewsListRouterProtocol´s Implementation

extension NewsListViewController: NewsListViewControllerProtocol {
    
    /// Sets news list in the view
    ///
    /// - Parameters:
    ///     - news: news list to display
    
    func showNews(_ news: [News]) {
        self.news = news
    }
    
}
