//
//  UIView+Ext.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI


extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return .zero }

        guard let safeArea = screen.windows.first?.safeAreaInsets else { return .zero }

        return safeArea
    }
}
