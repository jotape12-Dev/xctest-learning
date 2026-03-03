//
//  CalculadoraTests.swift
//  CalculadoraTests
//
//  Created by Jota Pe on 02/03/26.
//

import XCTest
@testable import Calculadora

final class CalculadoraTests: XCTestCase {

    var sut: CalculadoraDeDesconto!

    override func setUp() {
        super.setUp()
        sut = CalculadoraDeDesconto()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_calcularValorFinal_comDescontoValido_deveRetornarValorCorreto() {
        let preco = 100.0
        let desconto = 20.0
        
        let resultado = sut.calcularValorFinal(precoOriginal: preco, porcentagemDesconto: desconto)
        
        XCTAssertEqual(resultado, 80.0, "O valor com 20% de desconto de 100 deveria ser 80.0")
    }

    func test_calcularValorFinal_comDescontoAcimaDe100_deveRetornarPrecoOriginal() {
        let resultado = sut.calcularValorFinal(precoOriginal: 50.0, porcentagemDesconto: 150.0)
        
        XCTAssertEqual(resultado, 50.0, "Descontos inválidos devem retornar o preço original")
    }
}
