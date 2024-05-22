//
//  AsiaViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation

class AsiaViewModel: ObservableObject {
    @Published var selectFlag = Int.random(in: 0...2)
    @Published var restart = false
    @Published var score = ""
    @Published var totScore = 0
    @Published var games = 0
    @Published var txtRed = false
    @Published var flag3D = 0.0
    @Published var paises = ["Afeganistão", "Arábia Saudita", "Bahrein", "Bangladesh", "Brunei", "Butão", "Camboja", "Cazaquistão", "China", "Coreia do Norte", "Coreia do Sul", "Emirados Árabes", "Filipinas", "Formosa", "Iêmen", "Índia", "Indonésia", "Irã", "Iraque", "Israel", "Japão", "Jordânia", "Kuwait", "Laos", "Líbano", "Malásia", "Maldivas", "Mongólia", "Myanmar", "Nepal", "Oma", "Palestina", "Paquistão", "Qatar", "Quirguizia", "Singapura", "Síria", "Sri Lanka", "Tadjiquistão", "Tailândia", "Tibete", "Timor Leste", "Turcomenistão", "Uzbequistão", "Vietnã"].shuffled()
    
    func flagClick(_ numero: Int) {
        if numero == selectFlag {
            flag3D += 360
            score = "Correto"
            totScore += 1
            games += 1
            txtRed = false
            shuffleFlag()
        } else {
            score = "Incorreto"
            games += 1
            totScore -= 1
            txtRed = true
            shuffleFlag()
        }
        if games == 8 {
            restart = true
            games = 0
        }
    }
    
    // A cada vez clicada, embaralha o deck
    func shuffleFlag() {
        paises.shuffle()
        selectFlag = Int.random(in: 0...2)
    }
    // Reinicia o jogo zerando pontuação e embaralhando o deck
    func restartGame() {
        totScore = 0
        shuffleFlag()
        score = ""
    }
}
