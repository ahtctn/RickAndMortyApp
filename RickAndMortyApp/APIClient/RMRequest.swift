//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Ahmet Ali ÇETİN on 19.03.2023.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    //Base url
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    //Endpoint (the point we are trying to reach)
    private let endpoint: RMEndpoint
    
    //Path components
    let pathComponents: [String]
    
    //Query Parameters (Optional?)
    let queryParametrs: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParametrs.isEmpty {
            string += "?"
            //name=value&name=value
            let argumentString = queryParametrs.compactMap({
                
                guard let value = $0.value else { return nil}
                
                return"\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    //MARK: PUBLIC
    
    init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParametrs: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParametrs = queryParametrs
    }
}
