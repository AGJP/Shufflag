//
//  AsiaView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 11/05/24.
//

import SwiftUI

struct AsiaView: View {
    @ObservedObject private var viewModel = AsiaViewModel()
    
    var body: some View {
        ZStack {
            //MARK: -  Background da View
            LinearGradient(colors: [.purple, .cyan, .green],startPoint: .trailing, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            VStack {
                
                //MARK: - Titulo e Categoria da View
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
                
                //MARK: - Configuração do subtitulo e nome da bandeira
                ScrollView {
                    VStack {
                        Text("Qual é a bandeira ??")
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                            .font(.title2)
                            .fontWeight(.heavy)
                        
                        // Configura o país aleatorio a ser selecionado
                        Text("\(viewModel.countrys[viewModel.select])")
                            .foregroundStyle(.pink)
                            .shadow(radius: 5)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                    }
                    
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
                VStack {
                    Text("\(viewModel.score)")
                        .foregroundStyle(viewModel.isRed ? .red : .green)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical, 20)
                    
                    Text("Pontuação: \(viewModel.totalScore)")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                }
                .alert("FIM DE JOGO", isPresented: $viewModel.isRestart) {
                    Button("Reiniciar") {
                        viewModel.restartGame()
                    }
                } message: {
                    Text("TOTAL: \(viewModel.totalScore) pontos")
                }
                .onAppear{
                    viewModel.restartGame()
                }
            } // VStack Raiz
            
        } // ZStack
    }
}

#Preview {
    AsiaView()
}
