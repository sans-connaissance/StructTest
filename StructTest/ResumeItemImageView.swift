//
//  ResumeItemImageView.swift
//  StructTest
//
//  Created by David Malicke on 1/24/22.
//
import Kingfisher
import SwiftUI

struct ResumeItemImageView: View {
    var imageString: String
    
    var body: some View {
        if let imageURL = URL(string: imageString) {
            KFImage(imageURL)
                .resizable()
                .scaledToFill()
        }
    }
}

struct ResumeItemImageView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeItemImageView(imageString: davidMalickeBasics.image!)
    }
}
