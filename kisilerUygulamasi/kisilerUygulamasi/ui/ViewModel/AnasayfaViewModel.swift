//
//  AnasayfaViewModel.swift
//  kisilerUygulamasi
//
//  Created by Mehmet Tuna Arıkaya on 16.12.2024.
//

import Foundation

class AnasayfaViewModel: ObservableObject {
    @Published  var kisilerListesi = [Kisiler]()
    //bunu private yapmicaksin amaci iletmek zaten yoksa erişemezsin
    
    func kisileriYukle(){
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
    }
    
    func sil(kisi_id:Int){
        print("kisi sil : \(kisi_id)")
        
    }
    func ara(aramaKelimesi:String){
        print("kisi ara : \(aramaKelimesi)")
        
    }
}
