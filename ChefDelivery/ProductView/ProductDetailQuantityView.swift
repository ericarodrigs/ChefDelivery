//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 09/02/25.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @State private var productQuantity = 1
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title2)
                .bold()
            
            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title.bold())
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title.bold())
                }

            }
        }
    }
}

struct ProductDetailQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView()
    }
}
