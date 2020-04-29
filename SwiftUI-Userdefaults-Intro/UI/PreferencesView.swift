//
//  PreferencesView.swift
//  SwiftUI-Userdefaults-Intro
//
//  Created by Yannis Lang on 29/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import SwiftUI

struct PreferencesView: View {
    @ObservedObject var settingsStore : SettingsStore
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Username"), content: {
                    TextField("userName", text: $settingsStore.userName)
                })
                
            }
        .navigationBarTitle("Preferences")
        }
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView(settingsStore: SettingsStore())
    }
}
