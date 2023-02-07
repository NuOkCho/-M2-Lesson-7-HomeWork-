//
//  Card.swift
//  (M2)Lesson-7(HomeWork)
//
//  Created by Ahmed Muvaza on 7/2/23.
//

import Foundation

class Card {
    var bankName: String
    var cardNumber: String
    var bill: Int
    
    init(bankName: String, cardNumber: String, bill: Int) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
}
