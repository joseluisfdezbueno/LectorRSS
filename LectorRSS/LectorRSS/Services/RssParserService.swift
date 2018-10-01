//
//  RssParserService.swift
//  LectorRSS
//
//  Created by José Luis Fernández Bueno on 01/10/2018.
//  Copyright © 2018 joseluisfdezbueno. All rights reserved.
//

import Foundation

/// Delegate

protocol RssParserServiceDelegate: class {
    func onNewsReceived(_ news: [News])
}

class RssParserService: NSObject {
    
    weak private var delegate: RssParserServiceDelegate?
    private var parser: XMLParser!
    
    private var news: [News] = []
    private var auxNews: News!
    private var foundCharacters = ""
    private var insideItem = false
    
}

// MARK: - Public methods

extension RssParserService {
    
    /// Download and parser rss to the News model
    ///
    /// - Parameters:
    ///     - delegate: delegate
    ///     - feedUrl: xml url
    
    public func parseRss(delegate: RssParserServiceDelegate, feedUrl: URL) {
        self.delegate = delegate
        
        self.parser = XMLParser(contentsOf: feedUrl)
        self.parser.delegate = self
        parser.parse()
    }
    
}

// MARK: - Private methods

extension RssParserService {
    
    /// Return image url from description tag from xml
    ///
    /// - Parameters:
    ///     - description: description tag
    /// - Return: news image url

    private func getImageUrlFromDescription(description: String) -> String? {
        let regExp = "src=\"([^\"]*)\""
        var url: String?
        
        if let range = description.range(of: regExp, options: String.CompareOptions.regularExpression, range: nil, locale: nil) {
            let imageUrl = String(description[range])
            let startIndex = imageUrl.index((imageUrl.startIndex), offsetBy: 5)
            let endIndex = imageUrl.index((imageUrl.endIndex), offsetBy: -1)
            let range = startIndex..<endIndex
            url = "https:" + String(imageUrl[range])
        }
        
        return url
    }
    
}

// MARK: - XMLParserDelegate´s Implementation

extension RssParserService: XMLParserDelegate {
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "item" {
            auxNews = News()
            insideItem = true
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        print("didEndElement")
        
        if insideItem {
            switch elementName {
            case "item":
                news.append(auxNews)
                insideItem = false
                break
            case "title":
                auxNews.title = foundCharacters
                foundCharacters = ""
                break
            case "link":
                auxNews.webUrl = foundCharacters
                foundCharacters = ""
                break
            case "description":
                auxNews.imageUrl = getImageUrlFromDescription(description: foundCharacters)
                
                if let image = auxNews.imageUrl, let url = URL(string: image) {
                    auxNews.image = try? Data(contentsOf: url)
                }
                
                auxNews.body = foundCharacters.removeHtmlTag().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                foundCharacters = ""
                break
            default:
                break
            }
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if insideItem {
            foundCharacters += string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print("Error: " + parseError.localizedDescription)
    }
    
    func parser(_ parser: XMLParser, foundCDATA CDATABlock: Data) {
        let dataString = String(data: CDATABlock, encoding: String.Encoding.utf8)
        foundCharacters = dataString ?? ""
        foundCharacters = foundCharacters.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        delegate?.onNewsReceived(news)
    }
    
}
