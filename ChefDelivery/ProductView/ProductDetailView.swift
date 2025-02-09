//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 09/02/25.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            
            Spacer()
            
            ProductDetailQuantityView()
            
            Spacer()
            
            ProductDetailButtonView()
        }
        .padding(.bottom, 16)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
