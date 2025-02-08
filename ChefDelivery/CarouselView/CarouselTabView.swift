//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 08/02/25.
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView {
            ForEach(ordersBannerMock) {orderBanner in
                CarouselItemView(order: orderBanner)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
