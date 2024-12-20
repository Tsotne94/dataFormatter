// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class MyDateFormatter: DateFormatting {
    public init() {}
    
    // Formatter for parsing input date string
    private let inputFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ka_GE")
        formatter.timeZone = TimeZone(identifier: "Asia/Tbilisi")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ" // input format
        return formatter
    }()
    
    // Formatter for outputting full date and time (like "MM/dd/yyyy at H:mm")
    private let fullDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ka_GE")
        formatter.timeZone = TimeZone(identifier: "Asia/Tbilisi")
        formatter.dateFormat = "MM/dd/yyyy 'at' H:mm"
        return formatter
    }()
    
    // Formatter for outputting date (like "12 დეკ 2024")
    private let dateOnlyFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ka_GE")
        formatter.timeZone = TimeZone(identifier: "Asia/Tbilisi")
        formatter.dateFormat = "d MMM yyyy"
        return formatter
    }()
    
    // Formatter for outputting time (like "16:20")
    private let timeOnlyFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ka_GE")
        formatter.timeZone = TimeZone(identifier: "Asia/Tbilisi")
        formatter.dateFormat = "HH:mm"
        return formatter
    }()
    
    /// **Original functionality**: Formats the input date into a combined date-time string (like "MM/dd/yyyy at H:mm")
    public func format(_ value: Date) -> String {
        return fullDateFormatter.string(from: value)
    }
    
    /// **New method**: Formats the input date into only the date (like "12 დეკ 2024")
    public func formatDateOnly(_ value: Date) -> String {
        return dateOnlyFormatter.string(from: value)
    }
    
    /// **New method**: Formats the input date into only the time (like "16:20")
    public func formatTimeOnly(_ value: Date) -> String {
        return timeOnlyFormatter.string(from: value)
    }
}
