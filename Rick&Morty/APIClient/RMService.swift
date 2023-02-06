//
//  RMService.swift
//  Rick&Morty
//
//  Created by Erxhan Selmani on 04/02/2023.
//

import Foundation

/// Primary API service object to get Rick & Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()

    /// Privatized constructor
    private init() {}

    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _: RMRequest,
        expecting _: T.Type,
        completion _: @escaping (Result<T, Error>) -> Void
    ) {}
}
