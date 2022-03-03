//
//  ContentView.swift
//  SVG
//
//  Created by Peter Oertig on 04.04.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.
//
//=RECHTS(A1;LÄNGE(A1)-3)



//Update Gesetzestexte
//STGB 01.01.2022





import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationView {
            
            //Titel mit Bild
            VStack(spacing: 0) { //Master VStack
                
                Image("JustitiaSTGB")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    .shadow(radius: 8)
                    .frame(width: 80.0, height: 80.0)
                    .padding(.vertical, 5.00)
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text("Aktualisiert am 01.01.2021")
                        .fontWeight(.light)
                }
           
                ScrollView {
                    VStack {  // Master Scrollview Stack
                        VStack {
                            HStack {
                                NavigationLink(destination: STGBATview() ){
                                    Text("Allgemeiner Teil")
                                        .fontWeight(.bold)
                                    Spacer()
                                    Text("Art. 1-110")
                                        .fontWeight(.bold)
                                    Image(systemName: "chevron.right")
                                    
                                }
                            }
                            .padding(EdgeInsets(top:8, leading: 10, bottom:8,trailing: 10 ))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .shadow(radius: 8)
                            
                            
                            HStack {
                                NavigationLink(destination: STGBBTview() ){
                                    Text("Besonderer Teil")
                                    .fontWeight(.bold)
                                    Spacer()
                                    Text("Art. 111-392")
                                    .fontWeight(.bold)
                                    Image(systemName: "chevron.right")
                                }
                                
                            }
                            .padding(EdgeInsets(top:8, leading: 10, bottom:8,trailing: 10 ))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .shadow(radius: 8)
                        }
                    } // Master ScrollViewStack
                        .padding(.all)
                }//End ScrollView
                
                
                Divider()
                HStack(alignment: .top, spacing: 0) {
                VStack {
                    NavigationLink(destination: SearchAllView() ){
                        VStack(alignment: .center) {
                            Image(systemName: "doc.text.magnifyingglass").font(.title)
                            Text("Suche über Alles")
                        }
                    }
                        //.padding(.bottom)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                }
    
                    VStack(alignment: .center) {
                        NavigationLink(destination: InfoView() ){
                            VStack {
                                Image(systemName: "info.circle").font(.title)
                                Text("Info")
                            }
                        }
                            //.padding(.bottom)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                    }
                }
                .padding(.vertical)
                .background(Color(UIColor.systemGray5))
                
            } //End Master VStack
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle(Text("Schweizerisches Strafgesetzbuch StGB").font(.callout), displayMode: .inline)
        }
            // End NavigationView
            
            
            .environment(\.horizontalSizeClass, .compact)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

