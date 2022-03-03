//
//  SearchBar.swift
//  STGB
//
//  Created by Peter Oertig on 09.06.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.
//

import Foundation
import SwiftUI

struct SearchBar: UIViewRepresentable {
    
    @Binding var text: String
    var placeholder: String
    
    
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var text: String
        @Published var searchTerm: String = ""
        
        
        init(text: Binding<String>) {
            _text = text
            
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            if let textToSearch = searchBar.text {
                text = textToSearch
            }
            searchBar.resignFirstResponder()
        }
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            text = ""
            searchBar.endEditing(true)
        }
        
        
    }
    
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = placeholder
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        searchBar.showsCancelButton = true
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

