//
//  OceaniaViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation
import SwiftUI

class OceaniaViewModel: ObservableObject {
    
    let layoutGrid = [GridItem(.adaptive(minimum: 150))]
    @Published var select = Int.random(in: 0...5)
    @Published var isRestart = false
    @Published var score = ""
    @Published var totalScore = 0
    @Published var games = 0
    @Published var isRed = false
    @Published var flag3D = 0.0
    @Published var countrys = ["Austrália", "Fiji", "Ilhas Marshall", "Ilhas Salomão", "Kiribati", "Micronésia", "Nauru", "Nova Zelândia", "Palau", "Papua-Nova Guiné", "Samoa", "Tonga", "Tuvalu", "Vanuatu"].shuffled()
    
    func flagClick(_ numero: Int) {
        if numero == select {
            flag3D += 360
            score = "Correto"
            totalScore += 1
            games += 1
            isRed = false
            shuffleFlag()
        } else {
            score = "Incorreto"
            games += 1
            totalScore -= 1
            isRed = true
            shuffleFlag()
        }
        if games == countrys.count {
            isRestart = true
            games = 0
        }
    }
    
    // A cada vez clicada, embaralha o deck
    func shuffleFlag() {
        countrys.shuffle()
        select = Int.random(in: 0...5)
    }
    // Reinicia o jogo zerando pontuação e embaralhando o deck
    func restartGame() {
        totalScore = 0
        shuffleFlag()
        score = ""
        }
}
