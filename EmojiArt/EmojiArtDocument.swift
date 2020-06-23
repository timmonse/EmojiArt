//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Evan Timmons on 6/23/20.
//  Copyright © 2020 Evan Timmons. All rights reserved.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    
    static let palette: String = "🤠🥏🚔☎️🏃‍♂️🦄🥨⚾️"
    
    @Published private var emojiArt: EmojiArt = EmojiArt()
    
    // MARK: - Intent(s)
    
    func addEmoji(_ emoji: String, at location: CGPoint, size: CGFloat) {
       emojiArt.addEmoji(emoji, x: Int(location.x), y: Int(location.y), size: Int(size))
    }

    func moveEmoji(_ emoji: EmojiArt.Emoji, by offset: CGSize) {
       if let index = emojiArt.emojis.firstIndex(matching: emoji) {
           emojiArt.emojis[index].x += Int(offset.width)
           emojiArt.emojis[index].y += Int(offset.height)
       }
    }

    func scaleEmoji(_ emoji: EmojiArt.Emoji, by scale: CGFloat) {
       if let index = emojiArt.emojis.firstIndex(matching: emoji) {
           emojiArt.emojis[index].size = Int((CGFloat(emojiArt.emojis[index].size) * scale).rounded(.toNearestOrEven))
       }
    }
}
