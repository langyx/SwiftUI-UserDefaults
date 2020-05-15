//
//  UserDefaultsExtension.swift
//  SwiftUI-Userdefaults-Intro
//
//  Created by Yannis Lang on 29/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import Foundation

//@propertyWrapper
//struct UserDefault<T> {
//    let key: String
//    let defaultValue: T
//
//    var wrappedValue: T {
//        get {
//            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
//        }
//        set {
//            UserDefaults.standard.set(newValue, forKey: key)
//        }
//    }
//}

extension UserDefaults{
    enum Keys: String {
        case launchNumber, userName, color
    }
}

extension UserDefaults {
    class func incrementIntegerForKey(key: String) {
        let defaults = self.standard
        let int = defaults.integer(forKey: key)
        defaults.set(int + 1, forKey: key)
    }
    
    static var userName: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.userName.rawValue) ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.userName.rawValue)
        }
    }
}
