//
//  PreferenceView.swift
//  SwiftUI-Userdefaults-Intro
//
//  Created by Yannis Lang on 29/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import SwiftUI

struct LaunchNumberView: View {
    
    @State private var launchNumber = UserDefaults.standard.integer(forKey: UserDefaults.Keys.launchNumber.rawValue)
    
    @ObservedObject var settingsStore: SettingsStore
    
    var body: some View {
        Text("\(self.settingsStore.userName) launched \(self.launchNumber) times")
    }
}

struct LaunchNumberView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchNumberView(settingsStore:  SettingsStore())
    }
}
