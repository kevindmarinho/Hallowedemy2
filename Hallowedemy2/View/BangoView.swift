//
//  BangoView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//



import SwiftUI

struct BangoView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = BangoViewModel()
    
    let rows = [
        GridItem(.fixed(50), spacing: 4),
        GridItem(.fixed(50), spacing: 4),
        GridItem(.fixed(50), spacing: 4),
        GridItem(.fixed(50), spacing: 4),
        GridItem(.fixed(50), spacing: 4),
        GridItem(.fixed(50), spacing: 0)
    ]
    
    let bango = Array("bango")
    
    var body: some View {
        
        ZStack(alignment: .top){
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                HStack{
                    Button( action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        ZStack(){
                            Circle()
                                .fill(Color("orangeButton"))
                                .frame(width: 38)
                            Image(systemName: "chevron.left")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            
                        }
                        
                    })
                    .padding(.leading, 20)
                    Spacer()
                }
                .padding(.top, 90)
                .padding(.bottom, 48)
                
                LazyHGrid(rows: rows, spacing: 4) {
                    ForEach(bango, id: \.self){ bangoLetter in
                        BangoRectangleView(
                            rectangleColor: "lightPurpleButton",
                            text: String(bangoLetter).uppercased(),
                            font: Font.custom("Sniglet-Regular", size: 30),
                            fontWeight: .bold,
                            color: .white,
                            widthScale: 1,
                            heightScale: 1
                        )
                        
                        let sortedNumbers = viewModel.card[String(bangoLetter)]!
                        
                        ForEach(0..<5){ i in
                            let isNumber = Int(sortedNumbers[i]) != nil
                            let isSelected = viewModel.selectedRecs[String(bangoLetter)]![i]
                            
                            Button {
                                if(isNumber){
                                    viewModel.updateRecs(String(bangoLetter), i)
                                }
                            } label: {
                                BangoRectangleView(
                                    rectangleColor: isSelected ? "orangeButton" : "purpleButton",
                                    text: String(sortedNumbers[i]),
                                    font: Font.custom("Sniglet-Regular", size: 30),
                                    fontWeight: .regular,
                                    color: .white,
                                    widthScale: 1,
                                    heightScale: 1
                                )
                            }
                        }
                        
                    }
                }
                
                
                Text("Restam \(String(viewModel.recsRemaining)) pedras para você ganhar o prêmio!")
                    .font(Font.custom("Sniglet-Regular", size: 24))
                    .foregroundStyle(.white)
                    .lineSpacing(4)
                    .multilineTextAlignment(.center)
                    .padding(.top, 32)
                    .padding(.horizontal)
                
            }
            
        }
        
        .navigationBarHidden(true)
    }
}

#Preview {
    BangoView()
}

