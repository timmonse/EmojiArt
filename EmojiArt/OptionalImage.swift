//
//  OptionalImage.swift
//  EmojiArt
//
//  Created by Evan Timmons on 6/26/20.
//  Copyright © 2020 Evan Timmons. All rights reserved.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        Group {
            if uiImage != nil {
                Image(uiImage: uiImage!)
            }
        }
    }
}
