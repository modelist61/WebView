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
    
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                
                NavigationLink("ВСЕ КУПОНЫ", destination: WebView(url: "https://www.vsemitut.ru"))
                
                Button(action: {
                    isSheetPresented.toggle()
                }, label: {
                    Text("Купоны в H2O")
                }).sheet(isPresented: $isSheetPresented, content: {
                    NavigationView {
                        WebView(url: "https://www.vsemitut.ru/h2opark/",
                                tintColor: .red,
                                titleColor: .yellow,
                                backText: Text("Cancel"),
                                reloadImage: Image(systemName: "figure.wave"),
                                goForwardImage: Image(systemName: "arrowshape.turn.up.right.circle"),
                                goBackImage: Image(systemName: "arrowshape.turn.up.left.circle"))
                    }
                })
                Spacer()
            }
            .navigationBarTitle("ВсеМыТут")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
