//
//  ContentView.swift
//  buttom sheet
//
//  Created by roba on 15/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var presentSheet = true
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10){
                //MARK: MAP VIEW
                Text("this is map page")
                Button("Modal") {
                    presentSheet = true
                }
                
            }
            
            .navigationTitle("Main")
        }
        
        
        //MARK: building sheet UI
        .bottomSheet(presentationeDetents: [.fraction(0.30),.medium,.large], isPresented:.constant(true), sheetCornerRadius: 20){
            NavigationView {
            
            //categories
            let items = 1...9
            
            VStack(spacing: 10){
         
            
                ScrollView() {
                    
                    
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())]){
                    
                        ForEach(items, id: \.self) { item in
                           
//                            Button{
//
//                            } label: {
                            NavigationLink {categoryContent()}
                        label: {
                            HStack{
                                VStack(spacing:1){
                                    Circle()
                                    //  .clipShape(Circle())
                                        .frame(width: 69 ,height: 69)
                                        .cornerRadius(8)
                                        .padding()
                                    Text("\(item)")
                                    
                                }//Vstack
                                }//Hstack
                            }  // navigation button
                      
                        } //Foreach
                    }//lazyVGrid
                }//scrollview

                                 }
            .navigationTitle("حدد وجهتك")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
                             }

            .searchable(text: $searchText, prompt: "Search " )
            
         
        } onDismiss: {}
          

            }
    
}

struct categoryContent: View {
    var body: some View{
        Text("this is category content")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
