//
//  InfoView.swift
//  STGB
//
//  Created by Peter Oertig on 28.09.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
        Text("Schweizerisches Strafgesetzbuch StGB")
            .font(.title)
            .multilineTextAlignment(.leading)
            .padding(.all)
        Divider ()
            Text("Diese App beinhaltet die Gesetzestexte des Schweizerischen Strafgesetzbuchs StGB. Die Texte können gekürzt oder unvollständig sein. Prüfen Sie die Richtigkeit mit dem verlinkten Originaltext.")
                .font(.headline)
                .multilineTextAlignment(.leading)
                .padding(.all)
            Spacer ()
        }
        .padding(.all)
      .navigationBarTitle(Text("Info").font(.callout), displayMode: .inline)
        }
    
}


    
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
