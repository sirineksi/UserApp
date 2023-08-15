//
//  WelcomeView.swift
//  UserApp
//
//  Created by ceksi on 15.08.2023.
//

import SwiftUI

struct WelcomeView: View {
    var username: String
    var password: String
    var rememberMe: Bool
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        VStack{
            Text("Hoşgeldiniz, \(username)!"  )
                .font(.title)
                .padding()
            if rememberMe {
                Text("Beni hatırladınız!")
                    .foregroundColor(.green).padding()
            }else {
                Text("Beni hatırlamadınız!")
                    .foregroundColor(.green).padding()
            }
            Text("Kullanıcı Adı: \(username)")
            Text("Şifre: \(password)")
            
            
            Button("Çıkış Yap") {
                UserDefaults.standard.removeObject(forKey: "username")
                UserDefaults.standard.removeObject(forKey: "password")
                UserDefaults.standard.synchronize()
                isLoggedIn = false
            }.padding()
        }
    }
}


