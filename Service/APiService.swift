//
//  APiService.swift
//  CSTAppStore
//
//  Created by Perfect Aduh on 02/05/2019.
//  Copyright © 2019 Covenant Sqaure Tech. All rights reserved.
//

import Foundation

class APIService {
    
    static let shared = APIService()
    
    
    func fetchApps(completion: @escaping ([Result]?, Error?) ->()) {
        
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                print("Could nto fectch json", err)
                completion(nil, err)
                return
            }
            
            guard let data = data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                searchResult.results.forEach({print($0.averageUserRating)})
                completion(searchResult.results, nil)
            }catch let jsonErr {
                print("Could nto decode json", jsonErr)
                completion(nil, jsonErr)
            }
            }.resume()
    }
}
