//
//  TitleFlagView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 24/05/24.
//

import SwiftUI

struct TitleFlagView: View {
    var flag: String
    var body: some View {
        VStack {
            Text("Qual é a bandeira ??")
                .foregroundStyle(.white)
                .shadow(radius: 5)
                .font(.title2)
                .fontWeight(.heavy)
            
            // Configura o país aleatorio a ser selecionado
            Text("\(flag)")
                .foregroundStyle(.pink)
                .shadow(radius: 5)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}
