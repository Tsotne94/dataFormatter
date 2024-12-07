// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class MyDateFormatter: DateFormatting {
    public init() {}
    
    private let dateFormatter = Foundation.DateFormatter()
    
    public func format(_ value: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tbilisi")
        
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"
        
        if let date = dateFormatter.date(from: value) {
            dateFormatter.dateFormat = "EEEE, d MMMM yyyy HH:mm:ss"
            return dateFormatter.string(from: date)
        } else {
            return "error"
        }
    }
}
