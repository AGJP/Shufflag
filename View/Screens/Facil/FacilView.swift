//
//  FacilView.swift
//  Shufflag
//
//  Created by Alex Gutemberg on 11/05/24.
//

import SwiftUI

struct FacilView: View {
    @ObservedObject private var viewModel = FacilViewModel()
    
    var body: some View {
        VStack {
            // Configura o título do app
            Text("Nível Fácil")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
        }
        VStack(spacing: 15) {
            // Configura o subtitulo, nome da bandeira e as bandeiras
            VStack {
                Text("Qual é a bandeira?")
                    .foregroundColor(.primary)
                    .font(.subheadline)
                    .fontWeight(.heavy)
                
                Text("\(viewModel.paises[viewModel.selectFlag])")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            } // Vstack 02
            
            // gera 3 bandeiras diferentes que gira 360 graus quando clicada
            VStack {
                ForEach(0..<3, id: \.self) { numero in
                    Button {
                        withAnimation(.spring(duration: 1, bounce: 0.5)) {
                            viewModel.flagClick(numero)
                        }
                    } label: {
                        Image(viewModel.paises[numero])
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                            .rotation3DEffect(.degrees(viewModel.flag3D), axis: (x: 0, y: 1, z: 0))
                    }
                }
            } // Vstack 03
            
        } // Vstack 01
        
        // Configura o bloco transparente atrás das bandeiras
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color.white.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
        
        // Configura a mensagem de acerto ou erro
        // Condicao ternaria para mudanca de cor do texto
        Text("\(viewModel.score)")
            .foregroundColor(viewModel.txtRed ? Color.red : Color.green)
            .font(.title)
            .fontWeight(.bold)
            .padding(.vertical, 20)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
        
        // Configura o score
        Text("Pontuação: \(viewModel.totScore)")
            .foregroundColor(.white)
            .font(.title)
            .fontWeight(.bold)
        
        // Modificador de ambiente
        .padding()
        
        // Configura o alerta do reinicio do jogo
        .alert(isPresented: $viewModel.restart) {
            Alert(
                title: Text("FIM DE JOGO"),
                message: Text("TOTAL: \(viewModel.totScore) pontos"),
                dismissButton: .cancel(Text("Reiniciar"), action: viewModel.restartGame)
            )
        } // Alerta
        
    }
}

#Preview {
    FacilView()
}


