//
//  FacilViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation

class FacilViewModel: ObservableObject {
    @Published var selectFlag = Int.random(in: 0...2)
    @Published var restart = false
    @Published var score = ""
    @Published var totScore = 0
    @Published var games = 0
    @Published var txtRed = false
    @Published var flag3D = 0.0
    @Published var paises = ["Austrália", "África do Sul", "Camarões", "Costa do Marfim", "Egito",  "Marrocos", "Nigéria", "Argentina", "Bolívia", "Brasil", "Canadá", "Chile", "Colômbia", "Equador", "Estados Unidos", "Cuba", "México", "Paraguai", "Peru", "Uruguai", "Venezuela", "Arábia Saudita", "China", "Coreia do Norte", "Coreia do Sul", "Emirados Árabes", "Índia", "Israel", "Japão", "Alemanha", "Bélgica", "Croácia", "Espanha", "França", "Grécia", "Holanda", "Inglaterra", "Itália", "País de Gales", "Polônia", "Portugal", "Reino Unido", "Rússia", "Suica", "Tchéquia", "Turquia", "Ucrânia"].shuffled()

    
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
