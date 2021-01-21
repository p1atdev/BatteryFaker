//
//  AppDelegate.swift
//  BatteryFaker
//
//  Created by 周廷叡 on 2021/01/21.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    
    //例のメニュー
    @IBOutlet weak var menu: NSMenu!
    
    //メニューバーに表示されるアプリケーションを作成
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    //これは起動時に実行されるやつだよ
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        //画像を取ってくるよ
        let batteryImage: NSImage = NSImage(named: "battery")!  //この"!"は絶対にnilが入らないよ!っていう保証みたいなやつ
        
        // メニューバーに表示される文字列
        self.statusItem.title = "0%"
        //MARK: 画像
        self.statusItem.image = batteryImage
        //ハイライトモード
        self.statusItem.highlightMode = false
        //メニュー
        self.statusItem.menu = menu
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

