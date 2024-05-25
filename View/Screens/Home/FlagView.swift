//
//  FlagView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 07/05/24.
//

import SwiftUI

struct FlagView: View {
    @State var viewModel = FlagViewModel()
    var isToog = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                //MARK: -  Background da view
                LinearGradient(colors: [.purple, .cyan, .green],startPoint: .trailing, endPoint: .topTrailing)
                    .ignoresSafeArea()
                
                // Vstack Raiz
                VStack(spacing: 50) {
                    
                    //MARK: - Titulos da view
                    VStack {
                        Text("Shufflag")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundStyle(.primary)
                        Text("Jogo das Bandeiras")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(.primary)
                    }
                
                    //MARK: - Centro da view
                    ScrollView {
                        
                        LazyVGrid(columns: viewModel.layoutGrid) {
                            
                            NavigationLink(destination: AfricaView()){
                                VStack {
                                    Image(viewModel.africa.country)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("África")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                        .shadow(radius: 5)
                                }
                            }
                            
                            NavigationLink(destination: AmericaView()){
                                VStack {
                                    Image(viewModel.america.country)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("América")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                        .shadow(radius: 5)
                                }
                            }
                            
                            NavigationLink(destination: AsiaView()){
                                VStack {
                                    Image(viewModel.asia.country)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("Ásia")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                        .shadow(radius: 5)
                                }
                            }
                            
                            NavigationLink(destination: EuropaView()){
                                VStack {
                                    Image(viewModel.europa.country)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("Europa")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                        .shadow(radius: 5)
                                }
                            }
                            
                            NavigationLink(destination: OceaniaView()){
                                VStack {
                                    Image(viewModel.oceania.country)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("Oceania")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                        .shadow(radius: 5)
                                }
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
