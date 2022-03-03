//
//  STGBBTview.swift
//  STGBBT
//
//  Created by Peter Oertig on 04.04.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.


import SwiftUI

struct STGBBTview: View {
    
    @State var searchTerm: String = ""
    
    var gesetzestextSTGBBT : [GesetzestextSTGBBT] = dataSTGBBT
    var gesetzestextSTGBBT2 : [GesetzestextSTGBBT2] = dataSTGBBT2
    var gesetzestextSTGBBT3 : [GesetzestextSTGBBT3] = dataSTGBBT3
    
    
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
                    Section {
                    ForEach(gesetzestextSTGBBT.filter {
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
                            || $0.absatz2litvz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litv.localizedCaseInsensitiveContains(searchTerm)
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
                        Part2(gesetzestextSTGBBT: item, searchTerm: self.$searchTerm)
                    }
                    
                }
                .id(UUID())
                       
                        Section {
                            ForEach(gesetzestextSTGBBT2.filter {
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
                                || $0.absatz2litvz.localizedCaseInsensitiveContains(searchTerm)
                                || $0.absatz2litv.localizedCaseInsensitiveContains(searchTerm)
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
                                Part3(gesetzestextSTGBBT2: item, searchTerm: self.$searchTerm)
                            }
                            
                        }
                        .id(UUID())
                    
                    Section {
                        ForEach(gesetzestextSTGBBT3.filter {
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
                            || $0.absatz2litvz.localizedCaseInsensitiveContains(searchTerm)
                            || $0.absatz2litv.localizedCaseInsensitiveContains(searchTerm)
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
                            Part4(gesetzestextSTGBBT3: item, searchTerm: self.$searchTerm)
                        }
                        
                    }
                    .id(UUID())
                }
                    
                    
                    
                .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
            }
            
            //Closing Master VStack
        }
        .navigationBarTitle(Text("Besonderer Teil (Art. 111-392)").font(.callout), displayMode: .inline)
        
        
        
        
    }
}


struct STGBBTview_Previews: PreviewProvider {
    static var previews: some View {
        STGBBTview(searchTerm:(""), gesetzestextSTGBBT: dataSTGBBT, gesetzestextSTGBBT2: dataSTGBBT2)
        
    }
}



struct Part2: View {
    var gesetzestextSTGBBT: GesetzestextSTGBBT
    @Binding var searchTerm: String
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HighlightedText(gesetzestextSTGBBT.buch, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT.buch.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.teil, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT.teil.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.titel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT.titel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.kapitel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT.kapitel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.abschnitt, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT.abschnitt.isEmpty ? -20.0 : 0)
                   
                    HStack {
                        HighlightedText(gesetzestextSTGBBT.artikel, searchTerm: self.searchTerm)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.artikel.isEmpty ? -20.0 : 0)
                        VStack(alignment: .leading) {
                            HighlightedText(gesetzestextSTGBBT.marginale1, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBBT.marginale1.isEmpty ? -20.0 : 0)
                            
                            HighlightedText(gesetzestextSTGBBT.marginale2, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBBT.marginale2.isEmpty ? -20.0 : 0)
                        }
                    }
                    HighlightedText(gesetzestextSTGBBT.absatz0, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT.absatz0.isEmpty ? -20.0 : 5)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz0lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz0lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz0lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1lita, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1lita.isEmpty ? -20.0 : 0)
                    
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litabis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litb, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litb.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litbziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litbziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litc, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litc.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litcbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litcbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litcbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litcbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litd, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litd.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litd.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1lite, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1lite.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1liteziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1liteziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1liteziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1liteziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litf, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litf.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litfbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litfbisz.isEmpty ? -53.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litfbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litfbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litg, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litg.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litg.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1lith, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1lith.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1lith.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1liti, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1liti.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1liti.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litj, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litj.isEmpty ? -20.0 : 0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz1bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz1bislitc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litabis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litbbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litbbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litbbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litbbis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litg.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2liti.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litpz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litpz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litp, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litp.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litqz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litqz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litq, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litq.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litrz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litrz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litr, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litr.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litsz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litsz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lits, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2lits.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2littz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2littz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litt, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litt.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2lituz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2lituz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litu, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litu.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litvz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2litvz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litv, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2litv.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2bislitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2bislitdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2bislitd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2bislitez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2bislite.isEmpty ? -20.0 : 0)
                    }
                }
                }
                VStack(alignment: .leading){
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quater, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2quater.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2quaterlitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2quaterlita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2quaterlitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2quaterlitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2quaterlitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2quaterlitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2sexiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2sexiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2sexies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2sexies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz2septiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz2septiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2septies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz2septies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3lita.isEmpty ? -20.0 : 0)
                    }
                    
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3litdziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3litdziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3litdziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3litdziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz3bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz3bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz3bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4quater, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4quater.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz4quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz4quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz4quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer5z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer5z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer5, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer5.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer6z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer6z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer6, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer6.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer7z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer7z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer7, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer7.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer8z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer8z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer8, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer8.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer9z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer9z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer9, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litaziffer9.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz5bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz5bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz5bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6litc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz6bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz6bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz6bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz7z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz7z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz7, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz7.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz7bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz7bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz7bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz7bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz8z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz8z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz8, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz8.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT.absatz9z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT.absatz9z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz9, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT.absatz9.isEmpty ? -20.0 : 5)
                    }
                    
                    
                }
                
            }
        } //NavigationView
    } //var body
} //Struct STGBBTview


struct Part3: View {
    var gesetzestextSTGBBT2: GesetzestextSTGBBT2
    @Binding var searchTerm: String
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HighlightedText(gesetzestextSTGBBT2.buch, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT2.buch.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT2.teil, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT2.teil.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT2.titel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT2.titel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT2.kapitel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT2.kapitel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT2.abschnitt, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT2.abschnitt.isEmpty ? -20.0 : 0)
                   
                    HStack {
                        HighlightedText(gesetzestextSTGBBT2.artikel, searchTerm: self.searchTerm)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.artikel.isEmpty ? -20.0 : 0)
                        VStack(alignment: .leading) {
                            HighlightedText(gesetzestextSTGBBT2.marginale1, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBBT2.marginale1.isEmpty ? -20.0 : 0)
                            
                            HighlightedText(gesetzestextSTGBBT2.marginale2, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBBT2.marginale2.isEmpty ? -20.0 : 0)
                        }
                    }
                    HighlightedText(gesetzestextSTGBBT2.absatz0, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT2.absatz0.isEmpty ? -20.0 : 5)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz0lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz0lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz0lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz0lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1lita, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1lita.isEmpty ? -20.0 : 0)
                    
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litabis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1litb, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1litb.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litbziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litbziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litbziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1litc, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1litc.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litcbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litcbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litcbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litcbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1litd, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1litd.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litd.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1lite, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1lite.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1liteziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1liteziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1liteziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1liteziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1liteziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1liteziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1liteziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1liteziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1litf, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1litf.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litfbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litfbisz.isEmpty ? -53.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litfbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litfbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1litg, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1litg.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litg.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1lith, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1lith.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1lith.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1liti, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1liti.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1liti.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT2.marginaleabsatz1litj, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT2.marginaleabsatz1litj.isEmpty ? -20.0 : 0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz1bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz1bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz1bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz1bislitc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litabis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litbbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litbbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litbbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litbbis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litg.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2liti.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litpz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litpz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litp, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litp.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litqz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litqz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litq, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litq.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litrz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litrz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litr, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litr.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2litsz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2litsz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2lits, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2lits.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2littz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2littz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litt, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litt.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2lituz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2lituz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2litu, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2litu.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2bislitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2bislitdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2bislitd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislitez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2bislitez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2bislite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2bislite.isEmpty ? -20.0 : 0)
                    }
                }
                }
                VStack(alignment: .leading){
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2quater, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2quater.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterlitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2quaterlitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterlita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2quaterlita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterlitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2quaterlitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterlitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2quaterlitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterlitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2quaterlitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2quaterlitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2quaterlitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2sexiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2sexiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2sexies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2sexies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz2septiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz2septiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz2septies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz2septies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3lita.isEmpty ? -20.0 : 0)
                    }
                    
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3litdziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3litdziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3litdziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3litdziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3litdziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3litdziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3litdziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3litdziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz3bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz3bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz3bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz3bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4quater, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4quater.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz4quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz4quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz4quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz4quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer5z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer5z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer5, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer5.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer6z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer6z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer6, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer6.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer7z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer7z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer7, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer7.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer8z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer8z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer8, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer8.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer9z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer9z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litaziffer9, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litaziffer9.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz5bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz5bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz5bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz5bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6litc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz6bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz6bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz6bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz6bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz7z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz7z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz7, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz7.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz7bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz7bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz7bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz7bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz8z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz8z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz8, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz8.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT2.absatz9z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT2.absatz9z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT2.absatz9, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT2.absatz9.isEmpty ? -20.0 : 5)
                    }
                    
                    
                }
                
            }
        } //NavigationView
    } //var body
} //Struct STGBBT2view

struct Part4: View {
    var gesetzestextSTGBBT3: GesetzestextSTGBBT3
    @Binding var searchTerm: String
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    HighlightedText(gesetzestextSTGBBT3.buch, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT3.buch.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT3.teil, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT3.teil.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT3.titel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT3.titel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT3.kapitel, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT3.kapitel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT3.abschnitt, searchTerm: self.searchTerm)
                        .font(.headline)
                        .padding(.bottom, 5.0)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT3.abschnitt.isEmpty ? -20.0 : 0)
                   
                    HStack {
                        HighlightedText(gesetzestextSTGBBT3.artikel, searchTerm: self.searchTerm)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.artikel.isEmpty ? -20.0 : 0)
                        VStack(alignment: .leading) {
                            HighlightedText(gesetzestextSTGBBT3.marginale1, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBBT3.marginale1.isEmpty ? -20.0 : 0)
                            
                            HighlightedText(gesetzestextSTGBBT3.marginale2, searchTerm: self.searchTerm)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.headline)
                                .padding(.leading)
                                .padding(gesetzestextSTGBBT3.marginale2.isEmpty ? -20.0 : 0)
                        }
                    }
                    HighlightedText(gesetzestextSTGBBT3.absatz0, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(gesetzestextSTGBBT3.absatz0.isEmpty ? -20.0 : 5)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz0lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz0lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz0lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz0lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1lita, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1lita.isEmpty ? -20.0 : 0)
                    
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litabis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1litb, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1litb.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litbziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litbziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litbziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1litc, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1litc.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litcbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litcbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litcbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litcbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1litd, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1litd.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litd.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1lite, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1lite.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1liteziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1liteziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1liteziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1liteziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1liteziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1liteziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1liteziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1liteziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1litf, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1litf.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litfbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litfbisz.isEmpty ? -53.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litfbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litfbis.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1litg, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1litg.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litg.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1lith, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1lith.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1lith.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1liti, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1liti.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1liti.isEmpty ? -20.0 : 0)
                    }
                    HighlightedText(gesetzestextSTGBBT3.marginaleabsatz1litj, searchTerm: self.searchTerm)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .padding(gesetzestextSTGBBT3.marginaleabsatz1litj.isEmpty ? -20.0 : 0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz1bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz1bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz1bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz1bislitc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litabisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litabis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litabis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litbbisz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 53.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litbbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litbbis, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litbbis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litg.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litiz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2liti, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2liti.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litjz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litj, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litj.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litkz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litk, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litk.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litlz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litl, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litl.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litmz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litm, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litm.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litnz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litn, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litn.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litoz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2lito, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2lito.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litpz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litpz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litp, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litp.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litqz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litqz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litq, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litq.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litrz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litrz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litr, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litr.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2litsz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2litsz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2lits, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2lits.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2littz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2littz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litt, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litt.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2lituz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2lituz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2litu, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2litu.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2bislitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2bislitdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2bislitd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislitez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2bislitez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2bislite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2bislite.isEmpty ? -20.0 : 0)
                    }
                }
                }
                VStack(alignment: .leading){
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 45.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2quater, searchTerm: self.searchTerm)
                            .padding(.leading, -56.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2quater.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterlitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2quaterlitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterlita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2quaterlita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterlitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2quaterlitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterlitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2quaterlitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterlitcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2quaterlitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2quaterlitc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2quaterlitc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 65.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -76.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2sexiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 55.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2sexiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2sexies, searchTerm: self.searchTerm)
                            .padding(.leading, -66.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2sexies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz2septiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 55.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz2septiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz2septies, searchTerm: self.searchTerm)
                            .padding(.leading, -66.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz2septies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3.isEmpty ? -20.0 : 5)
                    }
                    
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3lita.isEmpty ? -20.0 : 0)
                    }
                    
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3litdziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3litdziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3litdziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3litdziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3litdziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3litdziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3litdziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3litdziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz3bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz3bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz3bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz3bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litbziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litbziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litbziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litbziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4bislitaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4bislita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4bislita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4bislitbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4bislitb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4bislitb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4terz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4ter, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4ter.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4quaterz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 45.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4quater, searchTerm: self.searchTerm)
                            .padding(.leading, -56.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4quater.isEmpty ? -20.0 : 5)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz4quinquiesz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 65.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz4quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz4quinquies, searchTerm: self.searchTerm)
                            .padding(.leading, -76.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz4quinquies.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer1z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer1, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer2z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer2, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer3z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer3, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer4z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer4, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer5z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer5z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer5, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer5.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer6z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer6z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer6, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer6.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer7z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer7z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer7, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer7.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer8z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer8z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer8, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer8.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer9z, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer9z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litaziffer9, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litaziffer9.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 40.0)
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litc.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz5bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz5bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz5bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz5bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litaz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6lita, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6lita.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litbz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6litb, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6litb.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litcz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6litc, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6litc.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading){
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litdz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6litd, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6litd.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litez, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6lite, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6lite.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litfz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6litf, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6litf.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6litgz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6litg, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6litg.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6lithz, searchTerm: self.searchTerm)
                            .padding(.leading)
                            .frame(width: 40.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6lith, searchTerm: self.searchTerm)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6lith.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz6bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz6bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz6bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz6bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz7z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz7z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz7, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz7.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz7bisz, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 25.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz7bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz7bis, searchTerm: self.searchTerm)
                            .padding(.leading, -36.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz7bis.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz8z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz8z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz8, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz8.isEmpty ? -20.0 : 5)
                    }
                    HStack(alignment: .top) {
                        HighlightedText(gesetzestextSTGBBT3.absatz9z, searchTerm: self.searchTerm)
                            .font(.caption)
                            .padding(.bottom, 3.0)
                            .frame(width: 7.0, alignment: .leading)
                            .padding(gesetzestextSTGBBT3.absatz9z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT3.absatz9, searchTerm: self.searchTerm)
                            .padding(.leading, -20.0)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(gesetzestextSTGBBT3.absatz9.isEmpty ? -20.0 : 5)
                    }
                    
                    
                }
                
            }
        } //NavigationView
    } //var body
} //Struct STGBBT3view
