//
//  SearchResult.swift
//  CSTAppStore
//
//  Created by Perfect Aduh on 02/05/2019.
//  Copyright © 2019 Covenant Sqaure Tech. All rights reserved.
//

import Foundation


struct SearchResult: Decodable {
    
    let resultCount: Int
    let results: [Result]
}


struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String // app icon
}
