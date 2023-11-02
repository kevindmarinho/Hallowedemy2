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
    
    var body: some Scene {
        WindowGroup {
            RaffleView()
                .environmentObject(raffleViewModel)
        }
    }
}
