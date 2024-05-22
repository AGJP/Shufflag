//
//  AfricaViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 15/05/24.
//

import Foundation

class AfricaViewModel: ObservableObject {
    @Published var selectFlag = Int.random(in: 0...2)
    @Published var restart = false
    @Published var score = ""
    @Published var totScore = 0
    @Published var games = 0
    @Published var txtRed = false
    @Published var flag3D = 0.0
    @Published var paises = ["África do Sul", "Angola", "Argélia", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde", "Camarões", "Chade", "Comores", "Congo", "Costa do Marfim", "Djibouti", "Egito", "Eritreia", "Essuatini", "Etiópia", "Gabão", "Gambia", "Gana", "Guine Bissau", "Guine Equatorial", "Guine", "Lesoto", "Libéria", "Líbia", "Madagascar", "Malawi", "Mali", "Marrocos", "Mauricio", "Mauritania", "Moçambique", "Namibia", "Niger", "Nigéria", "Puntlândia", "Quênia", "República Centro Africana", "República Democrática do Congo", "Ruanda", "Saara Ocidental", "São Tomé e Príncipe", "Senegal", "Serra Leoa", "Seychelles", "Somália", "Somalilândia", "Sudão do Sul", "Sudão", "Tanzânia", "Togo", "Tunísia", "Uganda", "Zâmbia", "Zimbábue"].shuffled()
    @Published var pais = "África do Sul"
    
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
