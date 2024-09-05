//
//  HumanlyNamed.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-08.
//

import Foundation

/// Types that rely on this protocol rely on 'Named'-protocol and add "familyName"-property to create types named in a way humans can be named.
protocol HumanlyNamed: Named {
    var familyName: String { get set }
}
