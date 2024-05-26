//
//  OceaniaView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 11/05/24.
//

import SwiftUI

struct OceaniaView: View {
    @ObservedObject private var viewModel = OceaniaViewModel()
    
    var body: some View {
        ZStack {
            //MARK: -  Background da View
            LinearGradient(colors: [.purple, .cyan, .green],startPoint: .trailing, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            VStack {
                
                //MARK: - Titulo e Categoria da View
                TitleAppView(subtitle: "Oceania")
                
                //MARK: - Configuração do subtitulo e nome da bandeira
                ScrollView {
                    TitleFlagView(flag: viewModel.countrys[viewModel.select])
                    
                    //MARK: - Configuração das bandeiras
                    VStack {
                        LazyVGrid(columns: viewModel.layoutGrid) {
                            ForEach(0..<6, id: \.self) { numero in
                                Button {
                                    withAnimation(.spring(duration: 1, bounce: 0.5)) {
                                        viewModel.flagClick(numero)
                                    }
                                } label: {
                                    Image(viewModel.countrys[numero])
                                        .resizable()
                                        .frame(width: 150, height: 75)
                                        .clipShape(Capsule())
                                        .shadow(radius: 5)
                                        .rotation3DEffect(.degrees(viewModel.flag3D), axis: (x: 0, y: 1, z: 0))
                                        .padding()
                                }
                            }
                        }
                    }
                    
                } // ScroolView
                //MARK: - Configuração do bloco transparente
                .frame(maxWidth: .infinity)
                .background(.white.opacity(0.4))
                .clipShape(.rect(cornerRadius: 20))
                .padding(.vertical, 20)
                
                //MARK: - Configuração de Pontuação e Acerto/Erro
                ScoreView(score: viewModel.score, isRed: viewModel.isRed , totalScore: viewModel.totalScore)
                
                //MARK: - Alerta do game
                .alert("FIM DE JOGO", isPresented: $viewModel.isRestart) {
                  Button("Reiniciar") {viewModel.restartGame()}
                    } message: {Text("TOTAL: \(viewModel.totalScore) pontos")}
                
                .onAppear{
                    viewModel.restartGame()
                }
            }.padding() // VStack Raiz
            
        } // ZStack
    }
}

#Preview {
    OceaniaView()
}
