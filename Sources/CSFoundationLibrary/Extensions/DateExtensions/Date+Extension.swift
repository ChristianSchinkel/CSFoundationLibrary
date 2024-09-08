//
//  Date+Extension.swift
//  CareNote
//
//  Created by Christian Schinkel on 2022-11-04.
//

import Foundation

public extension Date {
    /// Returns a date that represents the start of the day.
    public var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
    /// Returns a date that represents the end of the day.
    public var endOfDay: Date {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: startOfDay)!
    }
    /// Returns a date that represents the start of the week.
    public var startOfWeek: Date {
        return Calendar.current.dateComponents([.calendar, .yearForWeekOfYear, .weekOfYear], from: self).date!
    }
    /// Returns a date that represents the end of the week.
    public var endOfWeek: Date {
        var components = DateComponents()
        components.weekOfYear = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: startOfWeek)!
    }
    /// Returns a date that represents the start of the month.
    public var startOfMonth: Date {
        let components = Calendar.current.dateComponents([.year, .month], from: startOfDay)
        return Calendar.current.date(from: components)!
    }
    /// Returns a date that represents the end of the month.
    public var endOfMonth: Date {
        var components = DateComponents()
        components.month = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: startOfMonth)!
    }
    /// Returns the date after adding one quart of an hour in seconds to it.
    static func nextQuarterHour(from date: Date) -> Date {
        let quarterHourInSeconds = 60 * 15
        return date.addingTimeInterval(TimeInterval(quarterHourInSeconds))
    }
    /// Returns the date after adding one half hour in seconds to it.
    static func nextHalfHour(from date: Date) -> Date {
        let halfHourInSeconds = 60 * 30
        return date.addingTimeInterval(TimeInterval(halfHourInSeconds))
    }
    /// Returns the date after adding one day in seconds to it.
    static func nextDay (from date: Date) -> Date {
        let oneDayInSeconds = 60 * 60 * 24
        return date.addingTimeInterval(TimeInterval(oneDayInSeconds))
    }
    /// Adding time-interval (two weeks) to a given date-instance.
    public var twoWeeksLater: Date {
        let twoWeeksInSeconds = 60 * 60 * 24 * 14
        let twl = self.addingTimeInterval(TimeInterval(twoWeeksInSeconds))
        return twl
    }
    /// Adding time-interval (two weeks) to a given date
    /// - Parameter referenceDate: The date references to and adding to a time-interval.
    /// - Returns: The date two weeks from the referring-date e.g. Date.now -> two weeks later.
    static func TwoWeeksLater(from referenceDate: Date) -> Date {
        let twoWeeksInSeconds = 60 * 60 * 24 * 14
        return referenceDate.addingTimeInterval(TimeInterval(twoWeeksInSeconds))
    }
}


public extension Date {
    /// Calculate a Date() from DateComponents().
    /// - Parameters:
    ///   - year: Int()
    ///   - month: Int()
    ///   - day: Int()
    /// - Returns: Date() from components. If there is a problem it returns the current date.
    static func makeDateFromDateComponents(_ year: Int, _ month: Int, _ day: Int) -> Date {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        return calendar.date(from: dateComponents) ?? Date()
    }
}
