//
//  FlagViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 15/05/24.
//

import Foundation

struct FlagViewModel{
    var opt = 0
    var togg = false
}

class FlagsButtons: ObservableObject {
    @Published var africa = "África do Sul"
    @Published var america = "Estados Unidos"
    @Published var asia = "China"
    @Published var europa = "Reino Unido"
    @Published var oceania = "Austrália"
    
    
}
