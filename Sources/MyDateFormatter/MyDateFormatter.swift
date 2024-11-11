// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class MyDateFormatter: DateFormatting {
    public init() {}
    
    private let dateFormatter = Foundation.DateFormatter()
    
    public func format(_ value: String) -> String {
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        if let date = dateFormatter.date(from: value) {
            dateFormatter.dateFormat = "EEEE, d MMMM yyyy"
            return dateFormatter.string(from: date)
        } else {
            return "error"
        }
    }
}
