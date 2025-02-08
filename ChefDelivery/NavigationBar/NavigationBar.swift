//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 07/02/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.black)
            Spacer()
            Button(action: {}){
                Image(systemName: "bell.badge")
            }
            .font(.title3)
            .foregroundColor(.red)
            .padding()
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
