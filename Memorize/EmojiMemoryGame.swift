//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by leoqyang on 2022/2/24.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    static let emojis = ["🚗", "🚎", "🚒", "🚛", "🦼", "🏍", "🚍", "🚠",
                  "🚞", "🚈", "🚊", "🛬", "🚀", "⛵️", "⛴", "⛽️",
                  "🚏", "🗼", "🎡", "⛱", "🌋", "🏕", "🏡", "🏭",
                  "🏤", "🏪", "🏛", "🛕", "🛣", "🌅", "🎆", "🌃"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10, createCardContent: { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        })
    }
            
    @Published private(set) var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: -Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
