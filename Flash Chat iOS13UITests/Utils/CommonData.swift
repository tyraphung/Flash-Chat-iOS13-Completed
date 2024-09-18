//
//  CommonData.swift
//  Flash Chat iOS13UITests
//
//  Created by Tyra Phung on 22/01/2024.
//

import Foundation

struct CommonData {
    static var randomStringFrom1To10: String {
        return String(Int.random(in: 1..<10))
    }
    
    static var random4Number: String {
        return String(Int.random(in: 1000...9999))
    }
    
    static var generateCurrentTimeStamp: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy_MM_dd_hh_mm_ss"
        return (formatter.string(from: Date()) as NSString) as String
    }
}
