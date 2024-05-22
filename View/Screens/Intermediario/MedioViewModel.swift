//
//  MedioViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation

class MedioViewModel: ObservableObject {
    @Published var selectFlag = Int.random(in: 0...2)
    @Published var restart = false
    @Published var score = ""
    @Published var totScore = 0
    @Published var games = 0
    @Published var txtRed = false
    @Published var flag3D = 0.0
    @Published var paises = ["Angola", "Argélia", "Etiópia", "Gana", "Líbia", "Quênia", "Senegal", "Sudão", "Tunísia", "Bahamas", "Costa Rica", "Haiti", "Jamaica", "Panamá", "Trinidad e Tobago", "Afeganistão", "Iêmen", "Irã", "Iraque", "Palestina", "Qatar", "Timor Leste", "Vietnã", "Albânia", "Armênia", "Áustria", "Bulgária", "Escócia", "Eslováquia", "Eslovênia", "Estônia", "Finlândia", "Hungria", "Irlanda", "Islândia", "Mônaco", "Noruega", "Romênia", "Sérvia", "Suécia", "Vaticano"].shuffled()
    
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


