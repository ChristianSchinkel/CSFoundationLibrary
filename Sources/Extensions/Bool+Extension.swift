//
//  Bool+Extension.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-14.
//

import Foundation

extension Bool {
    /// **Boolean** representation as **Integer**: *true* *returns* one (1) and *false* *returns* zero (0).
    public var representedAsInteger: Int {
        // print("Bool converts to Integer.")
        if self == true {
            return 1
        } else {
            return 0
        }
    }
    
    /// **Boolean** representation as **Double**: *true* *returns* one (1) and *false* *returns* zero (0).
    /// *The underlying computational operation is done by '**var** representedAsInteger'.
    public var representedAsDouble: Double {
        // print("Bool converts to Double.")
        return Double(representedAsInteger)
    }
}
