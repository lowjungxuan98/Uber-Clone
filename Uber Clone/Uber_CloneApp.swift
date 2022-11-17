//
//  Uber_CloneApp.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 14/11/2022.
//

import SwiftUI

@main
struct Uber_CloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
