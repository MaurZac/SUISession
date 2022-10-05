//
//  MovieListViewModel.swift
//  SUISession
//
//  Created by C376855 on 29/09/22.
//

import Foundation
import Combine

class MovieListViewModel {
    init() {
        getMovies()
    }
    
    var moviesres = [Movies] (){
        didSet{
            didChange.send(self)
        }
    }
    
    let didChange = PassthroughSubject<MovieListViewModel, Never>()
    
    func getMovies() {
        NetworkManager().getMovies {
            //assing result to the viewmodel
            self.moviesres = $0
        }
    }
}
