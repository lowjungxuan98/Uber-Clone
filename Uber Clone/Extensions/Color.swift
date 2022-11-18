//
//  Color.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 18/11/2022.
//

import SwiftUI
extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
}
