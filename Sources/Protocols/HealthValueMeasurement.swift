//
//  HealthValueMeasurement.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-08.
//

import Foundation

/// Requires that a type object is identifiable by "id" for example "UUID", types must have a name and a unit.
protocol HealthValueMeasurement: Identifiable, Codable, Named {
    var date: Date { get set }
    var value: Double { get set }
    var unit: String { get set }
}
