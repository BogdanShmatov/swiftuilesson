//
//  ContentView.swift
//  SwiftUILesson
//
//  Created by Bogdan Shmatov on 05.04.2024.
//

import SwiftUI

struct SimpleCalculatorView: View {
    
    @StateObject private var viewModel = CalculatorViewModel()
    @State var rate: CGFloat = 0
    
    var body: some View {
        NavigationView {
            VStack {
                RatingView(rating: rate)
            }
            
//            .background(Color.gray)
//            .padding(16)
//            .frame(maxWidth: .infinity)
        }
    }
}

struct SimpleCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleCalculatorView()
    }
}
