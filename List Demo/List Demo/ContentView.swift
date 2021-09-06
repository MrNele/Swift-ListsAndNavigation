//
//  ContentView.swift
//  List Demo
//
//  Created by xc51b8 on 2021-09-06.
//

import SwiftUI

struct ContentView: View {
    
    var array=["Element 1", "Element 2", "Element 3", "pa 4", "pa 5"]
    var body: some View {
       /* List {
            
            Text("Element 1")
            Text("Element 2")
            Text("Element 3")
         
         }
            Elemnti iznad ce biti hardcoded, a metoda ispod dinamicka pa se gore u var array mogu dodavati novi elementi*/
        NavigationView{
        List(array, id: \.self) {   arrayElement in
                
            NavigationLink(
                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                label: {
                    Text("Navigate to")
                })
 
        Text(arrayElement)
        }.navigationBarTitle(Text("My List"))
        } // ovde ni slucajno stavljati .navigationBarTitle(Text("My list")) jer nece nista prikazati
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
