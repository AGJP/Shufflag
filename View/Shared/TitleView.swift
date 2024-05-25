//
//  TitleView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 24/05/24.
//

import SwiftUI

struct TitleView: View {
    var subtitle: String
    
    var body: some View {
        VStack {
            Text("Shufflag")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.primary)
            Text(subtitle)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundStyle(.primary)
        }
    }
}
