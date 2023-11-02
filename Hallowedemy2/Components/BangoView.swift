//
//  BangoView.swift
//  Hallowedemy2
//
//  Created by kevin marinho on 02/11/23.
//



import SwiftUI

struct BangoView: View {
//    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = BangoViewModel()
    @State var confeteBool = false
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let bango = Array("bango")
    
    var body: some View {

            
            ZStack{
                VStack(){
                    LazyHGrid(rows: rows) {
                        ForEach(bango, id: \.self){ bangoLetter in
                            BangoRectangleView(
                                rectangleColor: "GreenButton",
                                text: String(bangoLetter).uppercased(),
                                font: .title,
                                fontWeight: .bold,
                                color: .black,
                                widthScale: 1,
                                heightScale: 1
                            )
                            .padding(.bottom, -80)
                            
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
                                        rectangleColor: isSelected ? "RedButton" : "CircleBackground",
                                        text: String(sortedNumbers[i]),
                                        font: isNumber ? .title : .caption2,
                                        fontWeight: .regular,
                                        color: isSelected ? .white : .black,
                                        widthScale: 1,
                                        heightScale: 1
                                    )
                                    .padding(.bottom, -20)
                                }

                            }
                        }
                    }.padding(.trailing)
                    Text("Restam \(String(viewModel.recsRemaining)) pedras para você ganhar o prêmio!")
                }
            }
        .navigationBarHidden(true)
    }
}

#Preview {
    BangoView()
}

