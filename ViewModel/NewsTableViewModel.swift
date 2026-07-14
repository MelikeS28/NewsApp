//
//  NewsTableViewModel.swift
//  HaberProjesi
//
//  Created by Melike on 14.07.2026.
//

import Foundation

final class NewsTableViewModel {
    
    private(set) var newsList: [News] = []
    
    var didUpdateNews: (() -> Void)?
    
    func fetchNews() {
        WebService().downloadNews(from: APIConstants.url) { [weak self] fetchedNews in
            guard let self = self else { return }
            
            if let fetchedNews = fetchedNews {
                self.newsList = fetchedNews
                self.didUpdateNews?()
            }
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return newsList.count
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsCellViewModel {
        let news = newsList[index]
        return NewsCellViewModel(news: news)
    }
}
