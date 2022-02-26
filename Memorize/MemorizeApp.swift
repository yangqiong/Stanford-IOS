//
//  MemorizeApp.swift
//  Memorize
//
//  Created by leoqyang on 2022/2/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
