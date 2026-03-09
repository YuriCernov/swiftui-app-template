//
//  AppButtonStyle.swift
//  SwiftUIAppTemplate
//

import SwiftUI

/// A simple and reusable button style for the template.
/// Use it across the app to keep buttons consistent.
struct AppPrimaryButtonStyle: ButtonStyle {

    var isFullWidth: Bool = true

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .frame(maxWidth: isFullWidth ? .infinity : nil)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(.mint)
                    .opacity(configuration.isPressed ? 0.75 : 1.0)
            }
            .foregroundStyle(.background)
            .contentShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .animation(.easeOut(duration: 0.12), value: configuration.isPressed)
    }
}

extension ButtonStyle where Self == AppPrimaryButtonStyle {
    static func appPrimary(isFullWidth: Bool = true) -> AppPrimaryButtonStyle {
        AppPrimaryButtonStyle(isFullWidth: isFullWidth)
    }
}
