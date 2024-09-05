//
//  Exemplifiable.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-08.
//

import Foundation

/// Types conform to the 'exemplifiable'-protocol. The have implementations to make sure there are examples of its own type **Self**.
protocol Exemplifiable {
    /// Makes examples of its own type **Self**.
    /// - Returns: Self
    static func makeExample() -> Self
}
