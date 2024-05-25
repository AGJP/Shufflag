//
//  RouteView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 24/05/24.
//

import SwiftUI

struct RouteView: View {
    var image: String
    var title: String
    
    var body: some View {
    
        VStack {
            Image(image)
                .resizable()
                .clipShape(Capsule())
                .shadow(radius: 5)
                .frame(width: 200, height: 100)
            Text(title)
                .font(.title)
                .foregroundStyle(.white)
                .shadow(radius: 5)
        }
    }
}
