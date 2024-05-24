//
//  ProductDetailView.swift
//  OnlineWordrobe
//
//  Created by Jigar on 25/05/24.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(product.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("$\(product.price, specifier: "%.2f")")
                    .font(.title2)
                    .foregroundColor(.green)
                    .padding(.top, 1)
                
                Text("About Item")
                    .font(.headline)
                    .padding(.top, 20)
                
                Text("Brand: ChArmkpR\nColor: Aprikot")
                    .padding(.top, 5)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Product Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productData[0])
    }
}
