//
//  ContentView.swift
//  Calculadora
//
//  Created by Jota Pe on 02/03/26.
//

import SwiftUI

struct ContentView: View {
    @State private var precoInput = ""
    @State private var resultado = "0.0"
    
    let calculadora = CalculadoraDeDesconto()
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Digite o preço", text: $precoInput)
                .keyboardType(.decimalPad)
                .padding()
                .border(Color.gray)
                .accessibilityIdentifier("precoTextField")
            
            Button("Aplicar 10% de Desconto") {
                if let valor = Double(precoInput) {
                    let calc = calculadora.calcularValorFinal(precoOriginal: valor, porcentagemDesconto: 10.0)
                    resultado = String(calc)
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .accessibilityIdentifier("calcularButton")
            
            Text(resultado)
                .font(.largeTitle)
                .accessibilityIdentifier("resultadoText")
        }
        .padding()
    }
}
