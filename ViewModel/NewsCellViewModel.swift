//
//  NewsCellViewModel.swift
//  HaberProjesi
//
//  Created by Melike on 14.07.2026.
//

import Foundation

struct NewsCellViewModel {
    
    private let news: News
    
    init(news: News) {
        self.news = news
    }
    
    var title: String {
        return news.title
    }
    
    var story: String {
        return news.story
    }
}
