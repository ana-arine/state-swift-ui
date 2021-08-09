//
//  StateIView.swift
//  EstadoCidade
//
//  Created by Ana Lucia Fermino de O. Arine on 16/07/21.
//

import SwiftUI

struct StateIView: View {
    
    @State private var showCityView = false
    var cityName: String = "Sorocaba"
    
    var body: some View {
        
        ZStack {
            
            
            Image(/*@START_MENU_TOKEN@*/"estadosaopaulo"/*@END_MENU_TOKEN@*/)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .offset(x: /*@START_MENU_TOKEN@*/-30.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            
            VStack {
                Text("São Paulo")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                
                Text("Terra da garoa")
                    .foregroundColor(.white)
                    .font(.title2)
                
                Button(action: { self.showCityView.toggle() }) {
                    Text("IR PARA MINHA CIDADE")
            
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                    
                }
                .sheet (isPresented: $showCityView) {
                    CityView(city: cityName)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black.opacity(0.5))
            
        }
    }

    
    struct StateIView_Previews: PreviewProvider {
        static var previews: some View {
            StateIView()
        }
    }
}
