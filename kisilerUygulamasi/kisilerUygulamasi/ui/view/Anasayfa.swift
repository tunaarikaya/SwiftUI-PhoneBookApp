//
//  ContentView.swift
//  kisilerUygulamasi
//
//  Created by Mehmet Tuna Arıkaya on 13.12.2024.
//

import SwiftUI

struct Anasayfa: View {
    @State private var aramaKelimesi = ""
    @ObservedObject private  var viewModel  = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                List{
                    ForEach(viewModel.kisilerListesi){ kisi in
                       
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
                    viewModel.kisileriYukle()
                    print("Anasayfaya donuldu")
                    

                }
        }.searchable(text: $aramaKelimesi,prompt: "Ara" )
            .onChange(of: aramaKelimesi){ _ , s in
                viewModel.ara(aramaKelimesi: s)
            
            }
    }
    func sil(at offsets:IndexSet){
        let kisi = viewModel.kisilerListesi[offsets.first!]
        viewModel.kisilerListesi.remove(at: offsets.first!)
        viewModel.sil(kisi_id: kisi.kisi_id!)
        
    }
}

#Preview {
    Anasayfa()
}
