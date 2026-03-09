//
//  Log.swift
//  SwiftUIAppTemplate
//

import Foundation

enum Log {
    static func info(_ message: String) {
        #if DEBUG
        print("ℹ️ \(message)")
        #endif
    }

    static func error(_ message: String) {
        #if DEBUG
        print("⛔️ \(message)")
        #endif
    }
}
