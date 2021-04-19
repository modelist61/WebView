//
//  ContentView.swift
//  WebViewTestApp
//
//  Created by Dmitry Tokarev on 09.04.2021.
//

import SwiftUI
import WKView

struct ContentView: View {
    
    @State private var isSheetPresented = false
    let asf = WKView.ActivityIndicator.self
    
    
    var body: some View {
        
        TabView {
            NavigationView {
                WebView(url: "https://www.vsemitut.ru/h2opark/",
                        tintColor: .black,
                        titleColor: .red,
                        hidesBackButton: true,
                        reloadImage: Image(systemName: "")
                        
                        //                            goForwardImage: <#T##Image#>,
                        //                            goBackImage: <#T##Image#>,
                        //                            title: "Загружаемся..."
                        //                            allowedHosts: <#T##[String]?#>,
                        //                            forbiddenHosts: <#T##[String]?#>,
                        //                            credential: <#T##URLCredential?#>,
                        //
                )
            }
            .tabItem {
                Text("Главная")
                Image(systemName: "house.fill")
                
            }
            NavigationView {
                
                WebView(url: "https://www.vsemitut.ru/greenwich/")
                
            }
            .tabItem {
                Text("Second")
                Image(systemName: "phone.fill")
            }
            WebView(url: "https://www.vsemitut.ru/personal/")
                .tabItem {
                    Text("Личный кабинет")
                    Image(systemName: "phone.fill")
                }
            
            Text("Test")
                
                .tabItem {
                    Text("TEST")
                    Image(systemName: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TabBarIcon: View {
     
     let width, height: CGFloat
     let systemIconName, tabName: String
     
     
     var body: some View {
         VStack {
             Image(systemName: systemIconName)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: width, height: height)
                 .padding(.top, 10)
             Text(tabName)
                 .font(.footnote)
             Spacer()
         }
     }
 }
