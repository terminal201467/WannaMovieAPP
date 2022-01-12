//
//  Model.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import Foundation

//CollectionMovie
struct CollectionsDetails {
    let id:Int
    let name:String
    let overview:String
    let poster_path:String?
    let backdrop_path:String
    let parts:[Parts]
    
    struct Parts {
        let adult:Bool
        let backdrop_path:String?
        let genre_ids:[Int]
        let id:Int
        let origin_language:String
        let origin_title:String
        let overview:String
        let release_date:String
        let popularity:Double
        let title:String
        let video:Bool
        let vote_average:Double
        let vote_count:Int
    }
}

//MARK:-MovieStruct
struct MovieDetails {
    let adult:Bool
    let backdrop_path:String
    let belong_to_collection:String?
    let budget:Int
    let genre:[Genre]
    
    //Genre
    struct Genre{
        let id:Int
        let name:String
    }
    
    let homePage:String
    let id:Int
    let imdb_id:String
    let original_language:String
    let original_title:String
    let overView:String
    let popularity:Double
    let poster_path:String?
    let production_companies:[Company]
    
    let production_country:[Country]
    
    let release_date:String
    let revenue:Int
    let runtime:Int
    let spoken_language:[Language]
    
    struct Language {
        let iso_639_1:String
        let name:String
    }
    
    let status:String
    let tagline:String
    let title:String
    let video:Bool
    let vote_average:Double
    let vote_count:Int
}

//MARK:-TVStruct
struct TVDetail {
    let backdrop_path:String
    let created_by:[CreateInfo]
    
    struct CreateInfo{
        let id:Int
        let credit_id:String
        let name:String
        let gender:Int
        let profile_path:String
    }
    
    let episode_run_time:[Int]
    let first_air_date:String
    let genres:[Genre]
    
    struct Genre {
        let id:Int
        let name:String
    }
    
    let homePage:String
    let id:Int
    let in_production:Bool
    let languages:[String]
    
    let last_air_date:String
    let last_episode_to_air:Episode
    
    struct Episode{
        let air_date:String
        let episode_number:Int
        let id:Int
        let name:String
        let overview:String
        let production_code:String
        let season_number:Int
        let still_path:String
        let vote_average:Double
        let vote_count:Int
    }
    
    let name:String
    let next_episode_to_air:String?
    let networks:[Networks]
    
    struct Networks {
        let name:String
        let id:Int
        let logo_path:String
        let origin_country:String
    }
    
    let origin_language:String
    let origin_name:String
    let overview:String
    let popularity:Double
    let poster_path:String
    let production_companies:[Company]
    
    let season:[Season]
    
    struct Season {
        let air_date:String
        let episode_count:Int
        let id:Int
        let name:String
        let overview:String
        let poster_path:String
        let season_number:Int
    }
    
    let status:String
    let tagline:String
    let type:String
    let vote_average:Double
    let vote_count:Int
}

//CompanyStruct
struct Company {
    let id:Int
    let logo_path:String
    let name:String
    let origin_country:String
}

//ContryStruct
struct Country {
    let iso_3166_1:String
    let name:String
}
