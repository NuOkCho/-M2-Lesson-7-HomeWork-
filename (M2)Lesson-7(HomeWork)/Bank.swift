//
//  Bank.swift
//  (M2)Lesson-7(HomeWork)
//
//  Created by Ahmed Muvaza on 7/2/23.
//

import Foundation

class Bank {
    var clients: [Client] = []
    
    func transferMoney(from: Client, to: Client, amount: Double) {
        print("Выберите карту:")
        for (index, card) in from.cards.enumerated() {
            print("\(index + 1). \(card.bankName) \(card.cardNumber)")
        }
        let selectedIndex = Int(readLine()!)! - 1
        let selectedCard = from.cards[selectedIndex]
        print("Вы выбрали: \(selectedCard.bankName) \(selectedCard.cardNumber)")
        
        print("Введите номер карты:")
        let destinationCardNumber = readLine()!
        var destinationClient: Client?
        for client in clients {
            for card in client.cards {
                if card.cardNumber == destinationCardNumber {
                    destinationClient = client
                }
            }
        }
        guard let toClient = destinationClient else {
            print("Клиент с такой картой: \(destinationCardNumber) не найден")
            return
        }
        print("Клиент: \(toClient.firstname) \(toClient.lastname)")
        
        print("Введите количество:")
        let enteredAmount = readLine()!
        guard let amountToTransfer = Double(enteredAmount) else {
            print("Недопустимая сумма")
            return
        }
        from.cards[selectedIndex].bill -= Int(amountToTransfer)
        for card in toClient.cards {
            if card.cardNumber == destinationCardNumber {
                card.bill += Int(amountToTransfer)
            }
        }
    }
}

extension Bank {
    func transferMoneyWithOptionalBinding(from: Client, to: Client, amount: Double) {
        print("Выберите карту:")
        for (index, card) in from.cards.enumerated() {
            print("\(index). \(card.bankName) \(card.cardNumber)")
        }
        let selectedIndex = Int(readLine()!)!
        let selectedCard = from.cards[selectedIndex]
        print("Вы выбрали \(selectedCard.bankName) \(selectedCard.cardNumber)")
        
        print("Введите номер карты:")
        let destinationCardNumber = readLine()!
        guard let toClient = clients.first(where: { client in
            client.cards.contains(where: { card in
                card.cardNumber == destinationCardNumber
            })
        }) else {
            print("Клиент с такой картой: \(destinationCardNumber) не найден")
            return
        }
        print("Клиент \(toClient.firstname) \(toClient.lastname)")
    }
}
