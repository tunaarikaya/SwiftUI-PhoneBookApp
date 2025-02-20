//d
//  KisiDetaySayfa.swift
//  kisilerUygulamasi
//
//  Created by Mehmet Tuna Arıkaya ron 13.12.2024.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisi = Kisiler()
    var viewModel = KisiDetayViewModel()
    
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        print("Kişi Kaydet :  \(kisi_id)  - \(kisi_ad) - \(kisi_tel)")
    }
    
        var body: some View {
            VStack(spacing:80){
                TextField("Kisi Ad",text:$tfKisiAd)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                Button("Guncelle"){
                    viewModel.guncelle(kisi_id: kisi.kisi_id!, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
                }
            }.navigationTitle("Kisi Detay")
                .onAppear{
                    tfKisiAd = kisi.kisi_ad!
                    tfKisiTel = kisi.kisi_tel!
                }
        }
    }


#Preview {
    KisiDetaySayfa()
}
