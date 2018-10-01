//
//  NewsListTableViewCell.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 23/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import UIKit

class NewsListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        newsTitleLabel.text = nil
        newsDescriptionLabel.text = nil
        
        newsImageView.image = nil
        newsImageView.setRoundImageStyle()
    }
        
    func bind(news: News) {
        newsTitleLabel.text = news.title
        newsDescriptionLabel.text = news.body
        
        if let imageData = news.image {
            newsImageView.image = UIImage(data: imageData)
        }
    }
    
}
