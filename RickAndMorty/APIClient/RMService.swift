//
//  RMService.swift
//  RickAndMorty
//
//  Created by Hasan Can Bayram on 20.02.2024.
//

import Foundation

/// Primary API service object to get Ric and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constractor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
    
}
