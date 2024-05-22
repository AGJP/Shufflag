//
//  DificilViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 16/05/24.
//

import Foundation

class DificilViewModel: ObservableObject {
    @Published var selectFlag = Int.random(in: 0...2)
    @Published var restart = false
    @Published var score = ""
    @Published var totScore = 0
    @Published var games = 0
    @Published var txtRed = false
    @Published var flag3D = 0.0
    @Published var paises = ["Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde", "Chade", "Comores", "Djibouti", "Eritreia", "Essuatini", "Etiópia", "Gabão", "Gambia", "Gana", "Guine Bissau", "Guine Equatorial", "Guine", "Lesoto", "Libéria", "Madagascar", "Malawi", "Mali", "Mauricio", "Mauritania", "Moçambique", "Namibia", "Niger","Puntlândia", "República Centro Africana", "República Democrática do Congo", "Ruanda", "Saara Ocidental", "São Tomé e Príncipe", "Serra Leoa", "Seychelles", "Somália", "Somalilândia", "Sudão do Sul", "Tanzânia", "Togo", "Uganda", "Zâmbia", "Zimbábue", "Antígua e Barbuda", "Barbados", "Belize", "Dominica", "El Salvador", "Granada", "Guatemala", "Guiana", "Haiti", "Honduras", "Nicarágua", "Santa Lúcia", "São Cristóvão e Névis", "São Vicente e Granadinas", "Suriname", "Bahrein", "Bangladesh", "Brunei", "Butão", "Camboja", "Cazaquistão", "Filipinas", "Formosa", "Indonésia", "Jordânia", "Kuwait", "Laos", "Malásia", "Maldivas", "Mongólia", "Myanmar", "Nepal", "Oma", "Quirguizia", "Singapura", "Sri Lanka", "Tadjiquistão", "Tailândia", "Tibete", "Turcomenistão", "Uzbequistão", "Andorra", "Azerbaidjão", "Belarus", "Bósnia", "Chipre", "Irlanda do Norte", "Kosovo", "Liechtenstein", "Luxemburgo", "Macedônia do Norte", "Malta", "Moldova", "Montenegro", "Povo Cigano Romani", "San Marino",].shuffled()
    
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
