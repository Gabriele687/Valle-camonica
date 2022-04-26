//
//  ContentView.swift
//  Valle camonica
//
//  Created by Gabriele Gervasoni on 03/06/21.
//
import UIKit
import SwiftUI
import WebKit
import Network





struct ContentView: View {

    var body: some View {
        TabView(selection: .constant(1)) {
           
            
            
            NavigationView{
                let htmlPath = Bundle.main.path(forResource: "Preservazione", ofType: "html")
                SwiftUIWebView(url: URL(fileURLWithPath: htmlPath!))
                .navigationTitle("Preservare il territorio")}
             
            .tabItem() {
                Text("Territorio"); Label("Binocolus", systemImage: "binoculars.fill"); }
                .tag(2)
            
            
            
            NavigationView{let htmlPath = Bundle.main.path(forResource: "ciclismo", ofType: "html")
            SwiftUIWebView(url: URL(fileURLWithPath: htmlPath!))
                .navigationTitle("Ciclismo in Valle")}
            .tabItem { Text("Ciclismo"); Label("Bicycle", systemImage: "bicycle");
            } 
                .tag(3)
            
            NavigationView{
                
                let htmlPath = Bundle.main.path(forResource: "Homepage", ofType: "html")
                SwiftUIWebView(url: URL(fileURLWithPath: htmlPath!))
                .navigationTitle("Home")}
            .tabItem { Text("Home"); Label("Home", systemImage: "house.fill");}
                .tag(1)
            
            
            
            NavigationView{let htmlPath = Bundle.main.path(forResource: "Chi siamo", ofType: "html")
            SwiftUIWebView(url: URL(fileURLWithPath: htmlPath!))
                .navigationTitle("Chi siamo")}
                .tabItem { Text("Chi siamo"); Label("Menu", systemImage: "info.circle.fill")}.tag(4)
            
            
            
            NavigationView{let htmlPath = Bundle.main.path(forResource: "indicazioni", ofType: "html")
            SwiftUIWebView(url: URL(fileURLWithPath: htmlPath!))
                .navigationTitle("Indicazioni")}
                .tabItem { Text("Indicazioni"); Label("Map", systemImage: "map.fill") }.tag(5)
            
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}

