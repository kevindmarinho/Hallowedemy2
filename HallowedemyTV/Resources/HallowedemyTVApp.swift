//
//  HallowedemyTVApp.swift
//  HallowedemyTV
//
//  Created by Iago Ramos on 01/11/23.
//

import SwiftUI

@main
struct HallowedemyTVApp: App {
    @StateObject var raffleViewModel = RaffleViewModel()
    @State var isSplashScreen = true
    
    var body: some Scene {
        WindowGroup {
            if isSplashScreen {
                SplashScreen(isActive: $isSplashScreen)
            } else {
                RaffleView()
                    .environmentObject(raffleViewModel)
            }
        }
    }
}
