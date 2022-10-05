//
//  MovieModel.swift
//  SUISession
//
//  Created by C376855 on 29/09/22.
//

import Foundation

struct Movies: Codable, Identifiable {
        var id = UUID()
        let page: Int
        let results: [Result]
        let totalPages, totalResults: Int
}

struct Result: Codable {
    let adult: Bool
    let backdropPath: String
    let genreIDS: [Int]
    let id: Int
    let originalLanguage, originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

}
