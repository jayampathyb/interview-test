//
//  ItemDetails.swift
//  Test Project
//
//  Created by Heshan Yodagama on 10/31/21.
//

import SwiftUI

struct ItemDetails: View {
    var body: some View {
        
        ZStack {
            VStack {
                HStack {
                    VStack {
                        Text("Adidas Air Max")
                            .font(.title2)
                        Text("Mens tennis shoe")
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                
                Image(systemName: "flame.circle.fill " )
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .center)
                    .background {
                        Color.gray
                    }
                    .cornerRadius(10)
                HStack {
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("$338")
                            Text("|")
                                .foregroundColor(.gray)
                            Text("2X")
                        }
                    }
                    Spacer()
                    
                }
                Text("Description - As the search bar now appears inside a list, it will usually start life hidden – users need to tug the list gently downwards at the top to reveal it. ")
                List(0 ..< 5) { item in
                    Text("Review \(item)")
                }
            }
            
            
            VStack {
                Spacer()
                Button {
                    print("Button pressed")
                } label: {
                    Spacer()
                    Text("Add review")
                        .padding(20)
                    Spacer()
                }
                .background {
                    Color.orange.opacity(0.8)
                }
                .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetails()
    }
}
