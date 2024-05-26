//
//  FlagView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 07/05/24.
//

import SwiftUI

struct FlagView: View {
    @State var viewModel = FlagViewModel()
    @State var isAlert = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                //MARK: -  Background da view
                LinearGradient(colors: [.purple, .cyan, .green],startPoint: .trailing, endPoint: .topTrailing)
                    .ignoresSafeArea()
                
                // Vstack Raiz
                VStack(spacing: 50) {
                    
                    //MARK: - Titulo e subtitulo da View
                    TitleAppView(subtitle: "Jogo das Bandeiras")
                
                    //MARK: - Centro da view
                    ScrollView {
                        
                        LazyVGrid(columns: viewModel.layoutGrid) {
                            
                            NavigationLink(destination: AfricaView()){
                                RouteView(image: viewModel.africa.country, title: "África")
                            }
                            
                            NavigationLink(destination: AmericaView()){
                                RouteView(image: viewModel.america.country, title: "América")
                            }
                            
                            NavigationLink(destination: AsiaView()){
                                RouteView(image: viewModel.asia.country, title: "Ásia")
                            }
                            
                            NavigationLink(destination: EuropaView()){
                                RouteView(image: viewModel.europa.country, title: "Europa")
                            }
                            
                            NavigationLink(destination: OceaniaView()){
                                RouteView(image: viewModel.oceania.country, title: "Oceania")
                            }
                        }
                    }
                }// VSTACK Raiz
            } // ZSTACK
        } // NAVIGATIONSTACK
    }
}


#Preview {
    FlagView()
}
