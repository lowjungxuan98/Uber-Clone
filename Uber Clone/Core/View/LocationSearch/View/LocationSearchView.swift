//
//  LocationSearchView.swift
//  Uber Clone
//
//  Created by Low Jung Xuan on 15/11/2022.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var showLocationSearchView: Bool
    @EnvironmentObject var viewModel : LocationSearchViewModel

    var body: some View {
        VStack {
            // header view
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)

                    TextField("Where to?", text: $viewModel.queryFragment)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
            }
            .padding(.leading)
            .padding(.top, 64)

            Divider()
                .padding(.vertical)

            // list view
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        ForEach(viewModel.results, id: \.self) { result in
                            LocationSearchResultCell(title: result.title, subtitle: result.subtitle)
                                .onTapGesture {
                                    viewModel.selectLocation(result.title)
                                    showLocationSearchView.toggle()
                                }
                        }
                    }
                }
            }
        }
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView(showLocationSearchView: .constant(false))
    }
}
