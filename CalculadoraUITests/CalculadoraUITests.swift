//
//  CalculadoraUITests.swift
//  CalculadoraUITests
//
//  Created by Jota Pe on 02/03/26.
//

import XCTest

final class CalculadoraUITests: XCTestCase {

    func test_fluxoDeDesconto_calculaExibeResultadoNaTela() throws {
        let app = XCUIApplication()
        app.launch()
        
        let precoTextField = app.textFields["precoTextField"]
        XCTAssertTrue(precoTextField.exists, "O campo de texto de preço deveria estar na tela")
        precoTextField.tap()
        precoTextField.typeText("100")
        
        let calcularButton = app.buttons["calcularButton"]
        XCTAssertTrue(calcularButton.exists, "O botão de calcular deveria estar na tela")
        calcularButton.tap()
        
        let resultadoText = app.staticTexts["resultadoText"]
        XCTAssertEqual(resultadoText.label, "90.0", "O resultado na tela deveria ser 90.0")
    }
}
