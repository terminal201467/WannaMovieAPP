//
//  MovieAPI.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import Foundation

class MovieAPI{
    
    static var shared:MovieAPI!
    
    private var baseURL = "https://api.themoviedb.org/3/"
    
    init(apiKey:String){
        baseURL = baseURL + apiKey
    }
    
    //search step
    //keyword>> id >> movieName
    
    ///put the parameter in the url
    private func buildURL(callBy:CallMethod,)->URLRequest{
        var component = URLComponents(string: baseURL)
        
    }
    
    
    private func getFilmData(){
        
        
    }
    
    
}

extension MovieAPI{
    
    //
    enum Keyword{
        
        
    }
    
    
    enum CallMethod{
        case
        var parameters:[String:Any]{


        }
    }
    
    enum FilmKind:String{
        case collection = "collection"
        case movie = "movie"
        case tv = "tv"
    }
}

