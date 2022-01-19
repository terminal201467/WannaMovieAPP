//
//  APIDataStruct.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import Foundation

class MovieAPI{
    
    static var shared:MovieAPI!
    
    var baseURL:String = "https://api.themoviedb.org/3/"
    
    init(apiKey:String) {
        baseURL = baseURL + apiKey
    }
    
    
    private func buildURL(url:String)->URLRequest{
        var request = URLRequest(url: url)
        
        
        
    }
    
    
    
    
    
    
}

//extension MovieAPI{
//
//    enum Parameters {
//        case <#case#>
//    }
//
//
//
//
//}
