//
//  FlagViewModel.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 15/05/24.
//

import Foundation
import SwiftUI

struct FlagViewModel {
    let layoutGrid = [GridItem(.adaptive(minimum: 150))]
    var africa = InitFlagsSettings(country: "África do Sul")
    var america = InitFlagsSettings(country: "Estados Unidos")
    var asia = InitFlagsSettings(country: "China")
    var europa = InitFlagsSettings(country: "Reino Unido")
    var oceania = InitFlagsSettings(country: "Austrália")
}
