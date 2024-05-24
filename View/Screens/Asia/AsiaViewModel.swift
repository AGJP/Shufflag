//
//  AsiaViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation
import SwiftUI

class AsiaViewModel: ObservableObject {
    
    let layoutGrid = [GridItem(.adaptive(minimum: 150))]
    @Published var select = Int.random(in: 0...5)
    @Published var isRestart = false
    @Published var score = ""
    @Published var totalScore = 0
    @Published var games = 0
    @Published var isRed = false
    @Published var flag3D = 0.0
    @Published var countrys = ["Afeganistão", "Arábia Saudita", "Bahrein", "Bangladesh", "Brunei", "Butão", "Camboja", "Cazaquistão", "China", "Coreia do Norte", "Coreia do Sul", "Emirados Árabes", "Filipinas", "Formosa", "Iêmen", "Índia", "Indonésia", "Irã", "Iraque", "Israel", "Japão", "Jordânia", "Kuwait", "Laos", "Líbano", "Malásia", "Maldivas", "Mongólia", "Myanmar", "Nepal", "Oma", "Palestina", "Paquistão", "Qatar", "Quirguizia", "Singapura", "Síria", "Sri Lanka", "Tadjiquistão", "Tailândia", "Tibete", "Timor Leste", "Turcomenistão", "Uzbequistão", "Vietnã"].shuffled()
    
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
