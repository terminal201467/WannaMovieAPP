//
//  MovieAPI.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import Foundation

class MovieAPI{
    
    //MARK:-Singleton
    static var shared: MovieAPI!
    
    private init(apiKey:String){
        self.apikey = apiKey
    }
    
    static func configure(apikey:String){
        MovieAPI.shared = MovieAPI(apiKey:apikey)
    }
    
    //MARK:-Properties
    private let apikey:String
    private var baseURL = "https://api.themoviedb.org/3/"
    
    /// the get API in the
    /// - Parameters:
    ///   - kind:
    ///   - callBy: the discover parameter in the callby
    /// - Returns: return a URLRequest
    private func buildDiscoverURL(kind:MovieDataKind = .discover,callBy:[DiscoverParameter])->URLRequest{
        baseURL = baseURL + kind.rawValue
        var components = URLComponents(string: baseURL)
        var query:[String:Any] = [:]
        callBy.map{$0.parameters.map{query[$0.key] = $0.value}}
        query["apikey"] = apikey
        components?.queryItems = query.map({URLQueryItem(name: $0.key, value: "\($0.value)")})
        return URLRequest(url: components!.url!, timeoutInterval: 10)
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - kind: <#kind description#>
    ///   - callBy: <#callBy description#>
    /// - Returns: return a URLRequest
    private func buildMovieURL(kind:MovieDataKind = .search,callBy:String)->URLRequest{
        baseURL = baseURL + kind.rawValue
        var components = URLComponents(string: baseURL)
        var query:[String:Any] = [:]
        query["apikey"] = apikey
        components?.queryItems = query.map{URLQueryItem(name: $0.key, value: "\($0.value)")}
        return URLRequest(url: components!.url!, timeoutInterval: 10)
    }
    
    private func buildReviewURL(kind:MovieDataKind = .review,callBy:String)->URLRequest{
        baseURL = baseURL + kind.rawValue
    }
    
    private func buildURL(kind:MovieKind,callBy:CallMethod...)->URLRequest{
        baseURL = baseURL + kind.rawValue
        var component = URLComponents(string: baseURL)
        var parameter = callBy
        return
    }
    
    private func buildURL<T:Equatable>(of )
    
    //HomePage's API
    public func getDiscoverData(){
        
        
    }
    
    //searchSystem's API
    public func getSearchData(){
        //search by: /movie/{movie_id}
    }
    
    //discover
    
    public func getReviewData(){
        
    }
    // /review/{review_id}
}

extension MovieAPI{
    enum MovieDataKind:String{
        case search = "/search/"
        case discover = "/discover/"
        case review = "/review/"
    }
    
    enum DiscoverParameter{
        case releaseYear(String)
        case releaseDateGTE(String)
        case releaseDateLte(String)
        
        var parameters:[String:Any]{
            switch self {
            case .releaseYear(let releaseYear):
                return ["primary_release_year":releaseYear]
            case .releaseDateGTE(let releaseDateGTE):
                return ["primary_release_date.gte":releaseDateGTE]
            case .releaseDateLte(let releaseDateLte):
                return ["primary_release_date.lte":releaseDateLte]
            }
        }
    }
    

    
    
    
}

