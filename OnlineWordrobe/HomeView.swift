//
//  HomeView.swift
//  OnlineWordrobe
//
//  Created by Jigar on 25/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    // Search Bar
                    HStack {
                        TextField("Search...", text: .constant(""))
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal, 10)
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 15)
                                }
                            )
                    }.padding(.top)
                    
                    // Banner
                    Image("banner")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    // Best Sale Product Section
                    Text("Best Sale Product")
                        .font(.headline)
                        .padding([.top, .leading])
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(productData) { product in
                                NavigationLink(destination: ProductDetailView(product: product)) {
                                    ProductCardView(product: product)
                                }
                            }
                        }.padding(.horizontal)
                    }
                    
                    Spacer()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
