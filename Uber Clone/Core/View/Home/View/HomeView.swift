//
//  HomeView.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 14/11/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()

            if showLocationSearchView {
                LocationSearchView()
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        showLocationSearchView.toggle()
                    }
            }

            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
