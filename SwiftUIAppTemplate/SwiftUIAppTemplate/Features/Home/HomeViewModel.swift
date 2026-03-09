//
//  HomeViewModel.swift
//  SwiftUIAppTemplate
//

import Foundation
import Combine

@MainActor
final class HomeViewModel: ObservableObject {
    
    private let container: AppContainer
    
    @Published var counter: Int = 0
    @Published var note: String = ""
    
    init(container: AppContainer) {
        self.container = container
        load()
    }
    
    func increment() {
        counter += 1
        container.log.info("Counter = \(counter)")
        container.store.set(String(counter), forKey: Keys.counter)
    }
    
    func saveNote() {
        container.store.set(note, forKey: Keys.note)
        container.log.info("Saved note")
    }
    
    private func load() {
        if let raw = container.store.string(forKey: Keys.counter),
           let value = Int(raw) {
            counter = value
        }
        note = container.store.string(forKey: Keys.note) ?? ""
    }
}

private enum Keys {
    static let counter = "home_counter_v1"
    static let note = "home_note_v1"
}
