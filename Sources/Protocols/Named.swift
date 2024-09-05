//
//  Named.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-08.
//

import Foundation

/// Types that rely on this protocol have must have a name-property (must be named).
protocol Named: Identifiable {
    var name: String { get set }
}
