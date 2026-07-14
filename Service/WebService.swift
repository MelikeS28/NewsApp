//
//  WebService.swift
//  HaberProjesi
//
//  Created by Melike on 2.02.2026.
//

import Foundation

final class WebService{
    
    func downloadNews(from urlString: String , completion: @escaping([News]?) -> Void) {
        
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("Network Error: \(error.localizedDescription)")
                completion(nil)
            }
            
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            
            do {
                let newsList = try JSONDecoder().decode([News].self, from: data)
                completion(newsList)
            } catch {
                print("JSON Decoding Error: \(error.localizedDescription)")
                completion(nil)
            }
            
        }.resume()
    }
}
