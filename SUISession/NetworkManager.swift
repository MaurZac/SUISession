//
//  NetworkManager.swift
//  SUISession
//
//  Created by C376855 on 29/09/22.
//

import Foundation
//key  https://api.themoviedb.org/3/movie/550?api_key=34c5d1ffcfea821c6c7269f28caafa11
class NetworkManager  {
    func getMovies(resultado: @escaping([Movies]) -> ()){
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/550?api_key=34c5d1ffcfea821c6c7269f28caafa11") else {
            fatalError("url not available")
        }
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse  else {return }
            if response.statusCode == 200 {
                //json serialization
                do {
                    let movies = try JSONDecoder().decode([Movies].self, from: data)
                    resultado(movies)
                }           catch let error {
                    print("a error has been ocurred: \(error.localizedDescription)")
                }
            }
        }.resume()
        
    }
}
