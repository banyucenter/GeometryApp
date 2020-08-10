//
//  ContentView.swift
//  GeometryApp
//
//  Created by Ipung Dev Center on 10/08/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Kolom(gambar1:"potrait1",gambar2:"potrait2",gambar3:"potrait3")
                Two()
                Kolom(gambar1:"potrait3",gambar2:"potrait4",gambar3:"potrait5")
            }
            .navigationBarTitle("Galeri", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Kolom : View {
    var gambar1, gambar2, gambar3 : String
    var body: some View {
        GeometryReader{
            geo in
            HStack {
                Image(self.gambar1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:geo.size.width/3, height:geo.size.height)
                    .clipped()
                Image(self.gambar2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:geo.size.width/3, height:geo.size.height)
                    .clipped()
                Image(self.gambar3)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:geo.size.width/3, height:geo.size.height)
                    .aspectRatio(contentMode: .fit)
                    .clipped()
            }
        }
    }
}

struct Two : View {
    var body: some View {
        GeometryReader{
            geo in
            HStack{
                Image("potrait4").resizable().aspectRatio(contentMode: .fill).frame(width:geo.size.width, height:geo.size.height).clipped()
            }
        }
    }
}


