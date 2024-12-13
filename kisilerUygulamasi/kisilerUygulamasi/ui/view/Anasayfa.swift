//
//  ContentView.swift
//  kisilerUygulamasi
//
//  Created by Mehmet Tuna Arıkaya on 13.12.2024.
//

import SwiftUI

struct Anasayfa: View {
    @State private var aramaKelimesi = ""
    @State private var kisilerListesi = [Kisiler]()
    var body: some View {
        NavigationStack{
            VStack {
                List{
                    ForEach(kisilerListesi){ kisi in
                       
                        NavigationLink(destination:KisiDetaySayfa(kisi:kisi)){
                            KisilerSatir(kisi:kisi)
                        }
                    }.onDelete(perform: sil)
                }
            }.navigationTitle("Kisiler")
                .toolbar{
                    ToolbarItem(placement:.navigationBarTrailing){
                        NavigationLink(destination:KisiKayitSayfa()){
                            Image(systemName:"plus")
                        }
                    }
                }.onAppear{
                    var liste = [Kisiler]()
                    let k1 = Kisiler(kisi_id: 1, kisi_ad: "Emre", kisi_tel: "05361234567")
                    let k2 = Kisiler(kisi_id: 2, kisi_ad: "Elif", kisi_tel: "05371234568")
                    let k3 = Kisiler(kisi_id: 3, kisi_ad: "Ahmet", kisi_tel: "05382345679")
                    let k4 = Kisiler(kisi_id: 4, kisi_ad: "Zeynep", kisi_tel: "05393456780")
                    let k5 = Kisiler(kisi_id: 5, kisi_ad: "Berk", kisi_tel: "05384567891")
                    let k6 = Kisiler(kisi_id: 6, kisi_ad: "Cemre", kisi_tel: "05395678902")
                    let k7 = Kisiler(kisi_id: 7, kisi_ad: "Murat", kisi_tel: "05406789013")
                    let k8 = Kisiler(kisi_id: 8, kisi_ad: "Deniz", kisi_tel: "05417890124")
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    liste.append(k4)
                    liste.append(k5)
                    liste.append(k6)
                    liste.append(k7)
                    liste.append(k8)
                    
                    kisilerListesi = liste
                    print("Anasayfaya donuldu")
                    

                }
        }.searchable(text: $aramaKelimesi,prompt: "Ara" )
            .onChange(of: aramaKelimesi){ _ , s in
                print("Kisi ara : \(s)")
            
            }
    }
    func sil(at offsets:IndexSet){
        let kisi = kisilerListesi[offsets.first!]
        kisilerListesi.remove(at: offsets.first!)
        
    }
}

#Preview {
    Anasayfa()
}
