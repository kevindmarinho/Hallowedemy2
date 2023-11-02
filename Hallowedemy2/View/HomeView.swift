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
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 80)
                    .padding(.top, 100)
               
                Image("ghost")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 100)
                    .padding(.top, 180)
                
                Spacer()
                
                NavigationLink {
                    BangoView()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundColor(Color("orangeButton"))
                        Text("Baaango!")
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                    }
                    .frame(height: 56)
                    .padding(.horizontal, 25)
                    .padding(.bottom, 100)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
