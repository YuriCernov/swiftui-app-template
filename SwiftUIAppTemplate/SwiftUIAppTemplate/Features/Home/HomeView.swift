//
//  HomeView.swift
//  SwiftUIAppTemplate
//

import SwiftUI

struct HomeView: View {

    @StateObject var viewModel: HomeViewModel

    var body: some View {
        List {
            templateStatusSection
            localStorageSection
            navigationSection
        }
        .navigationTitle("SwiftUI Template")
    }

    private var templateStatusSection: some View {
        Section("Template status") {
            counterRow

            Button("Increment") {
                viewModel.increment()
            }
            .buttonStyle(.appPrimary())
        }
    }

    private var counterRow: some View {
        HStack {
            Text("Counter")
            Spacer()
            Text("\(viewModel.counter)")
                .monospacedDigit()
        }
    }

    private var localStorageSection: some View {
        Section("Local storage (UserDefaults)") {
            TextField("Write a note…", text: $viewModel.note)

            Button("Save note") {
                viewModel.saveNote()
            }
            .buttonStyle(.appPrimary())
        }
    }

    private var navigationSection: some View {
        Section("Navigation") {
            NavigationLink("Open placeholder screen") {
                placeholderScreen
            }
        }
    }

    private var placeholderScreen: some View {
        Text("Next screen (placeholder)")
            .navigationTitle("Next")
    }
}
