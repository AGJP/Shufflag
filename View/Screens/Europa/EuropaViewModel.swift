//
//  EuropaViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation

class EuropaViewModel: ObservableObject {
    @Published var selectFlag = Int.random(in: 0...2)
    @Published var restart = false
    @Published var score = ""
    @Published var totScore = 0
    @Published var games = 0
    @Published var txtRed = false
    @Published var flag3D = 0.0
    @Published var paises = ["Albânia", "Alemanha", "Andorra", "Armênia", "Áustria", "Azerbaidjão", "Belarus", "Bélgica", "Bósnia", "Bulgária", "Chipre", "Croácia", "Dinamarca", "Escócia", "Eslováquia", "Eslovênia", "Espanha", "Estônia", "Finlândia", "França", "Geórgia", "Grécia", "Holanda", "Hungria", "Inglaterra", "Irlanda do Norte", "Irlanda", "Islândia", "Itália", "Kosovo", "Letônia", "Liechtenstein", "Lituânia", "Luxemburgo", "Macedônia do Norte", "Malta", "Moldova", "Mônaco", "Montenegro", "Noruega", "País de Gales", "Polônia", "Portugal", "Povo Cigano Romani", "Reino Unido", "Romênia", "Rússia", "San Marino", "Sérvia", "Suécia", "Suica", "Tchéquia", "Turquia", "Ucrânia", "Vaticano"].shuffled()
    
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
