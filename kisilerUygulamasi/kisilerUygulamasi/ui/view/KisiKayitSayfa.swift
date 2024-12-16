//
//  KisiKayitSayfa.swift
//  kisilerUygulamasi
//
//  Created by Mehmet Tuna Arıkaya on 13.12.2024.
//

import SwiftUI

struct KisiKayitSayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var viewModel = KisiKayitViewModel()
    
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    
    var body: some View {
        VStack(spacing:80){
            TextField("Kisi Ad",text:$tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("Kaydet"){
                viewModel.kaydet(kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
        }
    }
}

#Preview {
    KisiKayitSayfa()
}
