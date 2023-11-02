//
//  HomeView.swift
//  Hallowedemy2
//
//  Created by Letícia Victoria das Neves Sales on 02/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack{
                Image("title")
                    .padding(.top, 100)
                Image("ghost")
                    .padding(.top, 180)
                
                
                NavigationLink {
                    Text("DickView")
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("orangeButton"))
                        Text("Baaango!")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal, 25)
                }
                .padding(.vertical, 85)
            }
        }
    }
}

#Preview {
    HomeView()
}
