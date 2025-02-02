//
//  KisilerSatir.swift
//  kisilerUygulamasi
//
//  Created by Mehmet Tuna Arıkaya on 13.12.2024.
//soslks

import SwiftUI

struct KisilerSatir: View {
    var kisi = Kisiler()
    var body: some View {
        VStack(alignment:.leading,spacing:16){
            Text(kisi.kisi_ad!).font(.system(size: 25))
            Text(kisi.kisi_tel!).font(.system(size: 20)).foregroundStyle(.gray)
            
        }
    }
}
