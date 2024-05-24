//
//  ContentView.swift
//  OnlineWordrobe
//
//  Created by Jigar on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Voucher")
                .tabItem {
                    Image(systemName: "ticket.fill")
                    Text("Voucher")
                }
            
            Text("Wallet")
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("Wallet")
                }
            
            Text("Settings")
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

