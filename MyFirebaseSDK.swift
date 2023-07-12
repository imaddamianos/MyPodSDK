//
//  MyFirebaseSDK.swift
//  MyFirebaseSDK
//
//  Created by iMad on 12/07/2023.
//

import Foundation
import Firebase

public class MyFirebaseSDK {
    public static let shared = MyFirebaseSDK()
    
    private init() {
        // Private initializer to enforce singleton pattern
    }
    
    public func initialize() {
        FirebaseApp.configure()
        // Initialize Crashlytics
        Crashlytics.crashlytics().setCrashlyticsCollectionEnabled(true)
        // Initialize Remote Config
        RemoteConfig.remoteConfig().fetchAndActivate(completionHandler: nil)
        // Initialize Analytics
        Analytics.setAnalyticsCollectionEnabled(true)
    }
}

