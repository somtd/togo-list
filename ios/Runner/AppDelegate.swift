import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Edit "GoogleMapsKey" in APIKey.swift
    if let path = Bundle.main.path(forResource: "APIKeys", ofType: "plist") {
        let keys = NSDictionary(contentsOfFile: path)
        print("keys"+keys)
        // let apiKey = keys["googleMapKey"] as? String
        // GMSServices.provideAPIKey(apiKey.googleMapsKey)
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
