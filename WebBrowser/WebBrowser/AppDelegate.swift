//
//  AppDelegate.swift
//  WebBrowser
//
//  Created by Ananya Cleetus on 4/11/15.
//  Copyright (c) 2015 Ananya Cleetus. All rights reserved.
//

import Cocoa
import WebKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    
    @IBOutlet weak var webView: WebView!
    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func Speak(sender: AnyObject) {
        let synethesizer = NSSpeechSynthesizer()
        let text = webView.mainFrameDocument.body.innerText
        synethesizer.startSpeakingString(text)
    }
}

