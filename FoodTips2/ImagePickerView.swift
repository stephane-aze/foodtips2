//
//  ImagePickerView.swift
//  FoodTips
//
//  Created by Etudiant on 19/11/2021.
//

import SwiftUI
import ImagePickerModule

struct ImagePickerView: View {
    
    @Environment(\.presentationMode) var isPresented
    
    var body: some View {
        ImagePicker(sourceType: .photoLibrary) { newImage in
            print(newImage)
        }
    }
        
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}

