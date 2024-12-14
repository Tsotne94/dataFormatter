//
//  File.swift
//  MyDateFormatter
//
//  Created by Cotne Chubinidze on 11.11.24.
//
import Foundation

public protocol DateFormatting {
    /// Original method to format a full date-time string
    func format(_ value: String) -> String
    
    /// New method to format only the date (like "12 დეკ 2024")
    func formatDateOnly(_ value: String) -> String
    
    /// New method to format only the time (like "16:20")
    func formatTimeOnly(_ value: String) -> String
}


