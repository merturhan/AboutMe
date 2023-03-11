//
//  FavoritesView.swift
//  AboutMe
//
//  Created by Mert Urhan on 11.03.2023.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        
        VStack{
            
            Text("Favorites")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            
            Text("Hobbies")
                .font(.title2)
            HStack{
                ForEach(information.hobbies, id: \.self) {hobbies in
                    Image(systemName: hobbies)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                }
                .padding()
            }
            .padding()
            
            
            Text("Foods")
                .font(.title2)
            HStack(spacing: 60){
                ForEach(information.foods, id: \.self) { food in
                    Text(food)
                        .font(.system(size: 48))
                }
            }
            
            
            Text("Favorite Colors")
                .font(.title2)
            HStack(spacing: 30){
                ForEach(information.colors, id: \.self){ color in
                    color
                        .frame(width : 70, height: 70)
                        .cornerRadius(10)
                }
            }
            .padding()
            
        }
        
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
