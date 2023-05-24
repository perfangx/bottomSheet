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
                MyIcon()
                    .frame(width: 194,height: 85)
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
                                    Image("verticalTransportation")
                                        .resizable()
                                  //  Circle()
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

struct MyIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.10246*width, y: 0.30453*height))
        path.addCurve(to: CGPoint(x: 0.18898*width, y: 0.14815*height), control1: CGPoint(x: 0.10246*width, y: 0.21816*height), control2: CGPoint(x: 0.1412*width, y: 0.14815*height))
        path.addLine(to: CGPoint(x: 0.81102*width, y: 0.14815*height))
        path.addCurve(to: CGPoint(x: 0.89754*width, y: 0.30453*height), control1: CGPoint(x: 0.8588*width, y: 0.14815*height), control2: CGPoint(x: 0.89754*width, y: 0.21816*height))
        path.addLine(to: CGPoint(x: 0.89754*width, y: 0.39785*height))
        path.addCurve(to: CGPoint(x: 0.81445*width, y: 0.55412*height), control1: CGPoint(x: 0.89754*width, y: 0.48181*height), control2: CGPoint(x: 0.86086*width, y: 0.55078*height))
        path.addLine(to: CGPoint(x: 0.6117*width, y: 0.56868*height))
        path.addCurve(to: CGPoint(x: 0.56827*width, y: 0.59349*height), control1: CGPoint(x: 0.59626*width, y: 0.56979*height), control2: CGPoint(x: 0.58126*width, y: 0.57835*height))
        path.addLine(to: CGPoint(x: 0.4959*width, y: 0.67778*height))
        path.addLine(to: CGPoint(x: 0.43747*width, y: 0.59925*height))
        path.addCurve(to: CGPoint(x: 0.38923*width, y: 0.56847*height), control1: CGPoint(x: 0.42347*width, y: 0.58044*height), control2: CGPoint(x: 0.40666*width, y: 0.56971*height))
        path.addLine(to: CGPoint(x: 0.18559*width, y: 0.55404*height))
        path.addCurve(to: CGPoint(x: 0.10246*width, y: 0.39778*height), control1: CGPoint(x: 0.13916*width, y: 0.55075*height), control2: CGPoint(x: 0.10246*width, y: 0.48176*height))
        path.addLine(to: CGPoint(x: 0.10246*width, y: 0.30453*height))
        path.closeSubpath()
        return path
    }
}
