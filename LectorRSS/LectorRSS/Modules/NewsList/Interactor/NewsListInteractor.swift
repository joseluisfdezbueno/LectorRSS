//
//  NewsListInteractor.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 22/9/18.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

final class NewsListInteractor {
    
    weak private var delegate: NewsListInteractorDelegate?
    
    init(delegate: NewsListInteractorDelegate) {
        self.delegate = delegate
    }
    
}

// MARK: - NewsListInteractorProtocol´s Implementation

extension NewsListInteractor: NewsListInteractorProtocol {
    
    /// Get the news list
    
    func getNewsList () {
        
        // TODO: mocked
        var news: [News] = []
        
        var new = News(title: "Prueba", description: "<br><br>Deep Silver avisa con un tráiler de lanzamiento que este viernes 28 de septiembre pondrá a la venta en las tiendas españolas Dakar 18, título desarrollado por Bigmoon Entertainment y basado en el rali anual organizado por Amaury Sport Organisation (A.S.O). El juego, que desde hoy se encuentra disponible en las tiendas digitales, se ofrece con versión para PlayStation 4, Xbox One y Windows PC. Dakar 18 promete ofrecer &quot;una simulación realista&quot; de la principal competición de ralli todoterreno, permitiendo a los jugadores ponerse en la piel de un piloto, usar el libro de ruta y completar&hellip;<b>", image: "https://images.elotrolado.net/headers/breves_news.jpg", webUrl: "https://www.elotrolado.net/hilo_trailer-de-lanzamiento-de-dakar-18_2303119")
        
        news.append(new);
        
        new = News(title: "Comiendo con gorilas2", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "", webUrl: "")
        
        news.append(new);
        
        new = News(title: "Comiendo con gorilas3", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "", webUrl: "")
        
        news.append(new);
        
        new = News(title: "Comiendo con gorilas4", description: "ComiendoCoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendoComiendo", image: "", webUrl: "")
        
        news.append(new);
        
        delegate?.onNewsReceived(news);
    }
    
}
