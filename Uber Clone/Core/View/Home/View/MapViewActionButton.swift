//
//  MapViewActionButton.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 15/11/2022.
//

import SwiftUI

struct MapViewActionButton: View {
    var body: some View {
        Button {
            print("ho")
        } label: {
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton()
    }
}
