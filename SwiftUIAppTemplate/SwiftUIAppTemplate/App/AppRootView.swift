//
//  AppRootView.swift
//  SwiftUIAppTemplate
//

import SwiftUI

struct AppRootView: View {

    let container: AppContainer

    var body: some View {
        NavigationStack {
            HomeView(viewModel: HomeViewModel(container: container))
        }
    }
}
