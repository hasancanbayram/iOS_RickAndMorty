//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Hasan Can Bayram on 20.02.2024.
//

import Foundation

/// Object that represent a single API call
final class RMRequest {   
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired enpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String> // chareacters/2
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem] // ?page=2&name=rick&status=alive
    
    /// Constructed url for the api request
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired https method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponent: Collection of path components
    ///   - queryParameters: Collection of query paramters
    public init(endpoint: RMEndpoint,
                pathComponent: Set<String> = [],
                queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponent
        self.queryParameters = queryParameters
    }
    
}
