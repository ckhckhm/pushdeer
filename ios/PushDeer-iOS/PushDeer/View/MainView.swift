//
//  MainView.swift
//  PushDeer
//
//  Created by HEXT on 2021/12/25.
//

import SwiftUI

/// APP 主界面
struct MainView: View {
  @EnvironmentObject private var store: AppState
  
  var body: some View {
    TabView.init(selection: $store.tabSelectedIndex) {
      DeviceListView()
        .tabItem {
          Label("设备",systemImage: "ipad.and.iphone")
        }
        .tag(0)
      
      KeyListView()
        .tabItem{
          Label("Key",systemImage: "key")
        }
        .tag(1)
      
      MessageListView()
        .tabItem({Label("消息",systemImage: "message")}).onTapGesture {
        }
        .tag(2)
      
      SettingsView()
        .tabItem{
          Label("设置",systemImage: "gearshape")
        }
        .tag(3)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView().environmentObject(AppState.shared)
  }
}
