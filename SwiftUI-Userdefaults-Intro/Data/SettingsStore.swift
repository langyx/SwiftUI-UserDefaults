//
//  SettingsStore.swift
//  SwiftUI-Userdefaults-Intro
//
//  Created by Yannis Lang on 29/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import Foundation
import Combine

class SettingsStore: ObservableObject {
    @Published var userName = UserDefaults.standard.string(forKey: UserDefaults.Keys.userName.rawValue) ?? ""
    private var canc: AnyCancellable!

    init() {
        canc = $userName.debounce(for: 0.2, scheduler: DispatchQueue.main).sink { newText in
            UserDefaults.standard.set(newText, forKey: UserDefaults.Keys.userName.rawValue)
        }
    }

    deinit {
        canc.cancel()
    }
}
