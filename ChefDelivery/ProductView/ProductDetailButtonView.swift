//
//  ProductDetailButtonView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 09/02/25.
//

import SwiftUI

struct ProductDetailButtonView: View {
    
    var onButtonTap: () -> Void
    
    var body: some View {
        Button {
            onButtonTap()
        } label: {
            HStack(spacing: 8) {
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3.bold())
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
        }
    }
}

struct ProductDetailButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailButtonView {
            print("clicou")
        }
    }
}
