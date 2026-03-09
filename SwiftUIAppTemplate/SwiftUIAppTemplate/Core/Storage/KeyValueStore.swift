//
//  KeyValueStore.swift
//  SwiftUIAppTemplate
//

import Foundation

protocol KeyValueStore {
    func set(_ value: String, forKey key: String)
    func string(forKey key: String) -> String?

    func set(_ value: Bool, forKey key: String)
    func bool(forKey key: String) -> Bool

    func removeValue(forKey key: String)
}
