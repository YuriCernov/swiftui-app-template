//
//  SwiftUIAppTemplateApp.swift
//  SwiftUIAppTemplate
//
//  Created by Yuri Cernov on 09/03/2026.
//

import SwiftUI

@main
struct SwiftUIAppTemplateApp: App {

    private let container = AppContainer()

    var body: some Scene {
        WindowGroup {
            AppRootView(container: container)
        }
    }
}
