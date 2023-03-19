//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Muhammet Kadir on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                AsyncImage(url: URL(string: "https://wallpaper.dog/large/5565932.jpg")) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }
                
                List(superHeroArray) { superhero in
                    Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
