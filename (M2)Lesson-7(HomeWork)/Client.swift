//
//  Client.swift
//  (M2)Lesson-7(HomeWork)
//
//  Created by Ahmed Muvaza on 7/2/23.
//

import Foundation

class Client {
    var firstname: String
    var lastname: String
    var cards: [Card] = []
    
    init(firstname: String, lastname: String, cards: [Card]) {
        self.firstname = firstname
        self.lastname = lastname
        self.cards = cards
    }
}
