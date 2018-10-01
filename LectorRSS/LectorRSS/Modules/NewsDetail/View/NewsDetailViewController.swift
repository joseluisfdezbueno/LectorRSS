//
//  NewsDetailViewController.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 25/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

import UIKit

final class NewsDetailViewController: UIViewController {
    
    @IBOutlet weak private var newsImageView: UIImageView!
    @IBOutlet weak private var newsTitleLabel: UILabel!
    @IBOutlet weak private var newsDescriptionTextView: UITextView!
    @IBOutlet weak private var openWebButton: UIButton!
    
    var presenter: NewsDetailPresenterProtocol!
    
    private var news: News! {
        didSet {
            newsTitleLabel.text = news.title ?? ""
            newsDescriptionTextView.text = news.body ?? ""
            if let imageData = news.image {
                newsImageView.image = UIImage(data: imageData)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setTexts()
    }
    
}

// MARK: - Private methods

extension NewsDetailViewController {
    
    /// Sets the default text of view elements

    private func setTexts() {
        openWebButton.setTitle(NewsDetailModule.Localizable.openWebButton, for: .normal)
    }
    
}

// MARK: - NewsDetailViewProtocol´s Implementation

extension NewsDetailViewController: NewsDetailViewControllerProtocol {
    
    /// Sets news in the view
    ///
    /// - Parameters:
    ///     - news: news to display
    
    func setNews(_ news: News) {
        self.news = news
    }
    
}
