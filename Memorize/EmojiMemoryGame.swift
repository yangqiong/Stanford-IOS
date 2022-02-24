//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by leoqyang on 2022/2/24.
//

import SwiftUI


class EmojiMemoryGame {
    static let emojis = ["🚗", "🚎", "🚒", "🚛", "🦼", "🏍", "🚍", "🚠",
                  "🚞", "🚈", "🚊", "🛬", "🚀", "⛵️", "⛴", "⛽️",
                  "🚏", "🗼", "🎡", "⛱", "🌋", "🏕", "🏡", "🏭",
                  "🏤", "🏪", "🏛", "🛕", "🛣", "🌅", "🎆", "🌃"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        })
    }
    
    private(set) var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
