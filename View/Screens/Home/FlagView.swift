//
//  FlagView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 07/05/24.
//

import SwiftUI

struct FlagView: View {
    @State var viewModel = FlagViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                //MARK: -  Background do app
                LinearGradient(colors: [.purple, .cyan, .green],startPoint: .trailing, endPoint: .topTrailing)
                    .ignoresSafeArea()
                
                // Vstack Raiz
                VStack(spacing: 50) {
                    
                    //MARK: - Titulos do App
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
                
                    //MARK: - Centro do app
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
                                }
                            }
                            
                            /*NavigationLink(destination: FacilView()){
                                VStack {
                                    Image(viewModelFlags.africa)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("Nível Fácil")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                }
                            }
                            
                            NavigationLink(destination: MedioView()){
                                VStack {
                                    Image(viewModelFlags.america)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("Nível Médio")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                }
                            }
                            
                            NavigationLink(destination: DificilView()){
                                VStack {
                                    Image(viewModelFlags.europa)
                                        .resizable()
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .frame(width: 150, height: 75)
                                    Text("Nivel Dificil")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                }
                            }*/
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
