//
//  STGBATview.swift
//  STGBAT
//
//  Created by Peter Oertig on 04.04.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.


import SwiftUI

struct STGBATview: View {
    
    @State var searchTerm: String = ""
    
    var gesetzestextSTGBAT : [GesetzestextSTGBAT] = dataSTGBAT
    
    
    var body: some View {
        
        VStack() {
            VStack {
                SearchBar(text: $searchTerm, placeholder: "Suche")
            }
            
            
            VStack {
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                        .padding(.horizontal)
                    Text("Stand 01.01.2022")
                    Spacer ()
                    HStack {
                        Image(systemName: "link")
                            .foregroundColor(Color.blue)
                        Text("Original Text")
                            .foregroundColor(Color.blue)
                    }
                    .padding(.horizontal)
                    .onTapGesture() {
                        UIApplication.shared.open(URL(string: "https://www.admin.ch/opc/de/classified-compilation/19370083/202007010000/311.0.pdf")!)
                        
                    }
                }
                Divider()
                List {
                    
                    ForEach(gesetzestextSTGBAT.filter {
                        self.searchTerm.isEmpty ? true : $0.buch.localizedCaseInsensitiveContains(searchTerm)
                            || $0.teil.localizedCaseInsensitiveContains(searchTerm)
                            || $0.titel.localizedCaseInsensitiveContains(searchTerm)
                            || $0.kapitel.localizedCaseInsensitiveContains(searchTerm)
                            || $0.abschnitt.localizedCaseInsensitiveContains(searchTerm)
                            || $0.artikel.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginale1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginale2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer3z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer3.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer4z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litaziffer4.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litez.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0lite.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litfz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litf.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litgz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0litg.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0lithz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz0lith.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaziffer3z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litaziffer3.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litabisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litabis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbziffer3z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litbziffer3.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litcbisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litcbis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1lite.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litez.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1lite.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1liteziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1liteziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1liteziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1liteziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1litf.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litfz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litf.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litfbisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litfbis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1litg.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litgz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litg.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1lith.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1lithz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1lith.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1liti.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litiz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1liti.localizedCaseInsensitiveContains(searchTerm)
                            || $0.marginaleabsatz1litj.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litjz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litj.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litkz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litk.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litlz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litl.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litmz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litm.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litnz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litn.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1litoz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1lito.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bislitaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bislita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bislitbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bislitb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bislitcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz1bislitc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litabisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litabis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litbbisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litbbis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litez.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lite.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litfz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litf.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litgz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litg.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lithz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lith.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litiz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2liti.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litjz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litj.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litkz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litk.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litlz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litl.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litmz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litm.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litnz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litn.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litoz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lito.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litpz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litp.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litqz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litq.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litrz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litr.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litsz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lits.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2littz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litt.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2lituz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litu.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislitez.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2bislite.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2terz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2ter.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quater.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterlitaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterlita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterlitbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterlitb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterlitcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quaterlitc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quinquiesz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2quinquies.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2sexiesz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2sexies.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2septiesz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2septies.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litdziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litdziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litdziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3litdziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz3bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litaziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litaziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litaziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litaziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litbziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litbziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litbziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litbziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4bislitaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4bislita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4bislitbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4bislitb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4terz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4ter.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4quaterz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4quater.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4quinquiesz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz4quinquies.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer1z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer1.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer2z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer2.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer3z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer3.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer4z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer4.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer5z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer5.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer6z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer6.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer7z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer7.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer8z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer8.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer9z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litaziffer9.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz5bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litaz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6lita.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litbz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litb.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litcz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litc.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litdz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litd.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litez.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6lite.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litfz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litf.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litgz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6litg.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6lithz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6lith.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz6bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz7z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz7.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz7bisz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz7bis.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz8z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz8.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz9z.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz9.localizedCaseInsensitiveContains(searchTerm)
                        
                        })
                    { item in
                        Part1(gesetzestextSTGBAT: item, searchTerm: self.$searchTerm)
                    }
                    
                }
                .id(UUID())
                    
                    
                    
                .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
            }
            
            //Closing Master VStack
        }
        .navigationBarTitle(Text("Allgemeiner Teil (Art. 1-110)").font(.callout), displayMode: .inline)
        
        
        
        
    }
}


struct STGBATview_Previews: PreviewProvider {
    static var previews: some View {
        STGBATview(searchTerm:(""), gesetzestextSTGBAT: dataSTGBAT)
        
    }
}



struct Part1: View {
    var gesetzestextSTGBAT: GesetzestextSTGBAT
    @Binding var searchTerm: String
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HighlightedText(gesetzestextSTGBAT.buch, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBAT.buch.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBAT.teil, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBAT.teil.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBAT.titel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBAT.titel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBAT.kapitel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBAT.kapitel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBAT.abschnitt, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBAT.abschnitt.isEmpty ? -20.0 : 0)
                   
                    HStack {
                        HighlightedText(gesetzestextSTGBAT.artikel, searchTerm: self.searchTerm)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.artikel.isEmpty ? -20.0 : 0)
                        VStack(alignment: .leading) {
                            HighlightedText(gesetzestextSTGBAT.marginale1, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBAT.marginale1.isEmpty ? -20.0 : 0)
                            
                            HighlightedText(gesetzestextSTGBAT.marginale2, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBAT.marginale2.isEmpty ? -20.0 : 0)
                        }
                    }
                    HighlightedText(gesetzestextSTGBAT.absatz0, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBAT.absatz0.isEmpty ? -20.0 : 5)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz0lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz0lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz0lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz0lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1lita, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1lita.isEmpty ? -20.0 : 0)
                    
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litabis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1litb, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1litb.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litbziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litbziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litbziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litbziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1litc, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1litc.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litcbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litcbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litcbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litcbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1litd, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1litd.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litd.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1lite, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1lite.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1liteziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1liteziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1liteziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1liteziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1liteziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1liteziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1liteziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1liteziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1litf, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1litf.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litfbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litfbisz.isEmpty ? -53.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litfbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litfbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1litg, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1litg.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litg.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1lith, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1lith.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1lith.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1liti, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1liti.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1liti.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBAT.marginaleabsatz1litj, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBAT.marginaleabsatz1litj.isEmpty ? -20.0 : 0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz1bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz1bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz1bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz1bislitc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litabis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litbbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litbbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litbbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litbbis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litg.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2liti.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litpz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litpz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litp, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litp.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litqz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litqz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litq, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litq.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litrz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litrz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litr, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litr.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2litsz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2litsz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2lits, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2lits.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2littz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2littz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litt, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litt.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2lituz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2lituz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2litu, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2litu.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2bislitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2bislitdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2bislitd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2bislitez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2bislitez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2bislite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2bislite.isEmpty ? -20.0 : 0)
                    }
                }
                }
                VStack(alignment: .leading){
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 55.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2quater, searchTerm: self.searchTerm)
                            .padding(.leading, -66.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2quater.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterlitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2quaterlitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterlita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2quaterlita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterlitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2quaterlitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterlitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2quaterlitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterlitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2quaterlitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2quaterlitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2quaterlitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2sexiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2sexiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2sexies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2sexies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz2septiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz2septiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz2septies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz2septies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3lita.isEmpty ? -20.0 : 0)
                    }
                    
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3litdziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3litdziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3litdziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3litdziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3litdziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3litdziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3litdziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3litdziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz3bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz3bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz3bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz3bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4quater, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4quater.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz4quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz4quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz4quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz4quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer5z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer5z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer5, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer5.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer6z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer6z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer6, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer6.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer7z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer7z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer7, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer7.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer8z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer8z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer8, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer8.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer9z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer9z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litaziffer9, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litaziffer9.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz5bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz5bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz5bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz5bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6litc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz6bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz6bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz6bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz6bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz7z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz7z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz7, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz7.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz7bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz7bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz7bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz7bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz8z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz8z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz8, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz8.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBAT.absatz9z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBAT.absatz9z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBAT.absatz9, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBAT.absatz9.isEmpty ? -20.0 : 5)
                    }
                    
                    
                }
                
            }
        } //NavigationView
    } //var body
} //Struct STGBATview

