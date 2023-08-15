//
//  RegisterView.swift
//  UserApp
//
//  Created by ceksi on 15.08.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var newUsername = ""
    @State private var newPassword = ""
    @State private var isRegistered = false
    
    var body: some View {
        VStack{
            TextField("Yeni Kullanıcı Adı", text: $newUsername).padding()
            SecureField("Yeni Şifre", text: $newPassword).padding()
            Button("Kayıt Ol") {
                isRegistered = true
            }.padding()
        }
        .alert(isPresented: $isRegistered) {
        Alert(title: Text("Başarılı Giriş"),message: Text("Kaydınız Başarıyla Oluşturuldu"))
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
