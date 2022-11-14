//
//  ContentView.swift
//  Space_Learning
//
//  Created by Devin Fernando on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let purple1 : Color = Color(red: 0.294, green: 0.451, blue: 1)
        
        NavigationView{
            VStack{
                //main VSTACK
                Spacer(minLength: 50)
                
                VStack{
                
                    Text("Beyond the Space")
                        .foregroundColor(Color.black)
                        .font(.system(size:22))
                }
                
                Spacer(minLength: 190)
                
                
                VStack{
                    Image("startimg")
                        .padding(.trailing, -20)
                    Spacer(minLength: 50)
                }

                
                NavigationLink(destination:HomePage()){
                    Text("Next")
                        .frame(width:378, height:60)
                        .foregroundColor(Color.white)
                        .background(purple1)
                        .cornerRadius(8)
                    
                    }
                
                Spacer(minLength: 20)
                
                
            }
        }
        
        
    }
}
        
            


struct HomePage :View{
    var body: some View{
        VStack{
            Text("Home Page")
        }
        .navigationBarBackButtonHidden(true)
    }
       

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


