//
//  AppContainer.swift
//  SwiftUIAppTemplate
//

import Foundation

/// Simple DI container for app-wide services.
/// Keep it boring & explicit – easy to extend later.
final class AppContainer {

    // MARK: Core services
    let log: Log.Type
    let store: KeyValueStore
    let api: APIClient

    init(
        log: Log.Type = Log.self,
        store: KeyValueStore = UserDefaultsStore(),
        api: APIClient = APIClient()
    ) {
        self.log = log
        self.store = store
        self.api = api
    }
}
