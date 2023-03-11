//
//  FunFactsView.swift
//  AboutMe
//
//  Created by Mert Urhan on 11.03.2023.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var funFact = ""
    
    var body: some View {
        
        VStack{
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minWidth: 400)
            
            Button("Show random fact"){
                funFact = information.funFacts.randomElement()!
            }
        }
        .padding()
        
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
