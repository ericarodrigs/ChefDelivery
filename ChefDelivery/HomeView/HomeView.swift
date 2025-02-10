//
//  HomeView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 10/02/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Circle()
                    .foregroundColor(Color("ColorRed"))
                    .frame(width: isAnimating ? 200 : 0)
                    .position(x: isAnimating ? 50 : -50, y: isAnimating ? 100 : -100)
                    .blur(radius: isAnimating ? 80 : 40)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Circle()
                    .foregroundColor(Color("ColorRedDark"))
                    .frame(width: isAnimating ? 200 : 0)
                    .position(
                        x: isAnimating ? geometry.size.width - 50 : geometry.size.width + 50,
                        y: isAnimating ? geometry.size.height - 100 : geometry.size.height + 100
                    )
                    .blur(radius: isAnimating ? 80 : 40)
                    .opacity(isAnimating ? 0.5 : 0)
                
                VStack {
                    Text("Chef Delivery")
                        .font(.system(size: 40)).fontWeight(.heavy)
                        .foregroundColor(Color("ColorRed"))
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Text("Peça as suas comidas no conforto da sua casa")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.black.opacity(0.7))
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Spacer()
                }
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5)) {
                    isAnimating = true
                }
        }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
