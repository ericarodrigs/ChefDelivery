//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 08/02/25.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex = 1
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(ordersBannerMock) {orderBanner in
                CarouselItemView(order: orderBanner)
                    .tag(orderBanner.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) {
                _ in
                
                withAnimation(.easeInOut(duration: 1)) {
                    if currentIndex > ordersMock.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
