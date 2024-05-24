//
//  ProductCardView.swift
//  OnlineWordrobe
//
//  Created by Jigar on 25/05/24.
//

import SwiftUI

struct ProductCardView: View {
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.image)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            
            Text(product.name)
                .font(.caption)
                .fontWeight(.bold)
                .lineLimit(2)
                .padding(.top, 5)
            
            Text("$\(product.price, specifier: "%.2f")")
                .font(.caption)
                .foregroundColor(.green)
        }
        .frame(width: 150)
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productData[0])
    }
}
