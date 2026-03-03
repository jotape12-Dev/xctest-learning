//
//  CalculadoraDeDesconto.swift
//  Calculadora
//
//  Created by Jota Pe on 02/03/26.
//

import Foundation

class CalculadoraDeDesconto {
    func calcularValorFinal(precoOriginal: Double, porcentagemDesconto: Double) -> Double {
            guard precoOriginal > 0, porcentagemDesconto >= 0, porcentagemDesconto <= 100 else {
                return precoOriginal
            }
            
            let valorDescontado = precoOriginal * (porcentagemDesconto / 100)
            return precoOriginal - valorDescontado
        }
    }
