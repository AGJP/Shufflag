//
//  ConfigView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 25/05/24.
//

import SwiftUI

struct TitleAppView: View {
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

struct ScoreView: View {
    var score: String
    var isRed: Bool
    var totalScore: Int
    
    var body: some View {
        VStack {
            Text("\(score)")
                .foregroundStyle(isRed ? .red : .green)
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, 20)
            
            Text("Pontuação: \(totalScore)")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}
