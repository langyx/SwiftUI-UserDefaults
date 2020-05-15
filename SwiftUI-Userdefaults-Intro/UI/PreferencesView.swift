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
    
    private let colorChoices = ["myRed", "myBlue"]
    @State private var colorPicked = 0
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Username"), content: {
                    TextField("userName", text: $settingsStore.userName)
                })
                Section(header: Text("UI")) {
                    Picker(selection: $colorPicked, label: Text("Color")) {
                        ForEach(0 ..< colorChoices.count) {
                            Text(self.colorChoices[$0])
                        }
                    }
                }
                Button(action: {
                    self.settingsStore.color = self.colorChoices[self.colorPicked]
                    UserDefaults.standard.set(self.settingsStore.userName, forKey: UserDefaults.Keys.userName.rawValue)
                    UserDefaults.standard.set(self.settingsStore.color, forKey: UserDefaults.Keys.color.rawValue)
                }, label: {
                    Text("Valider")
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
