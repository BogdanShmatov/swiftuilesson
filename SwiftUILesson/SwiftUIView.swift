//
//  RateView.swift
//  WooppayWallet
//
//  Created by Bogdan Shmatov on 02.05.2024.
//  Copyright © 2024 WooppayWallet. All rights reserved.
//

import SwiftUI

struct RatingView: View {
    @State var rating: CGFloat = 0
    
    var label = ""
    var maximumRating = 5
    
    var offImage = Image("unStar")
    var onImage = Image("star")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                Button {
                    withAnimation {
                        rating = CGFloat(number)
                    }
                } label: {
                    image(for: CGFloat(number))
                        .resizable()
                        .frame(width: 48, height: 48)
                        .foregroundColor(CGFloat(number) > rating ? offColor : onColor)
                        .animation(.spring, value: rating)
                        
                }
            }
        }
        .buttonStyle(.plain)
    }
    
    func image(for number: CGFloat) -> Image {
        if number > rating {
            offImage
        } else {
            onImage
        }
    }
}

//#Preview {
//    RatingView(rating: .constant(4))
//}


