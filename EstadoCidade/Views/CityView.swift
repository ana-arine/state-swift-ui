//
//  CityView.swift
//  EstadoCidade
//
//  Created by Ana Lucia Fermino de O. Arine on 16/07/21.
//

import SwiftUI

struct CityView: View {
    @State private var showStateView = false
    
    var city: String
    
    var body: some View {
        
        ZStack {
            
            Image("sorocaba")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack {
                Text("\(city)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                
                Text("Terra rasgada")
                    .foregroundColor(.white)
                    .font(.title2)
                
                Button(action: {
                    self.showStateView.toggle()
                }) {
                    Text("IR PARA MEU ESTADO")
                        
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                }
                .sheet (isPresented: $showStateView) {
                    StateIView()
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black.opacity(0.5))
        }
    }
    
}


//struct CityView_Previews: PreviewProvider {
//
//    static var city: String = <#initializer#>
//    static var previews: some View {
//        CityView(city: city)
//    }
//}
