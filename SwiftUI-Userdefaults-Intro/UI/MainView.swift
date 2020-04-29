//
//  MainView.swift
//  SwiftUI-Userdefaults-Intro
//
//  Created by Yannis Lang on 29/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var settingsStore = SettingsStore()
    
    var body: some View {
        TabView {
            LaunchNumberView(settingsStore: self.settingsStore)
                .tabItem{
                    Image(systemName: "number.circle")
            }
            PreferencesView(settingsStore: self.settingsStore)
                .tabItem{
                    Image(systemName: "person.circle")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
