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
                        .frame(maxWidth: .infinity, minHeight: 60.0)
                        .foregroundColor(Color.white)
                        .font(.title2)
                    
                        .background(purple1)
                        .cornerRadius(8)
                    
                }.padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                
                Spacer(minLength: 20)
                
                
            }
        }
        
        
    }
}
        
            


struct HomePage :View{
    @State private var username = ""
    @State private var password = ""
    var body: some View{
        let purple1 : Color = Color(red: 0.294, green: 0.451, blue: 1)

        NavigationView{
            ZStack{
                VStack{
                    Image("icon1")
                        
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom:400.0, trailing: 0))
                
                
                VStack{
                    //add text field here
                    TextField("Username", text: $username)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 60.0)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(8)
                        .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                       
                        //.border(.red, width: <#T##CGFloat#>(wrongUsername))
                    
                   
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 60.0)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(8)
                        .padding(EdgeInsets(top: 10, leading: 20.0, bottom: 0, trailing: 20.0))
                        //red line build when user enterd a wrong passsword
                        //.border(.red, width: <#T##CGFloat#>(wrongUsername))
                    
                    Text("Forgot Password")
                        .foregroundColor(purple1)
                        .padding(EdgeInsets(top: 15.0, leading: 0, bottom: 0, trailing: 0))
                    //change text into navigation link later
                    
                    
                    
                    NavigationLink(destination:HomeScreen()){
                        Text("Login")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, minHeight: 60.0)
                            .background(purple1)
                            .cornerRadius(8)
                    }
                    

                    .padding(EdgeInsets(top: 140, leading: 20.0, bottom: 0, trailing: 20.0))
                   
                    

                    
                    
                    
                    
                    
                    
                }
                .padding(EdgeInsets(top:360.0, leading: 0, bottom:0, trailing: 0))
                //input field padding
                
            }
        }
     .navigationBarBackButtonHidden(true)
    }
       

}


struct HomeScreen :View{
    @State private var search=""

    var body: some View{
        let purple1 : Color = Color(red: 0.294, green: 0.451, blue: 1)
        ZStack{
            ZStack{
                VStack{
                    Image("smallicon")
                }
                .padding(EdgeInsets(top:0, leading: 0, bottom:790, trailing: 350))
            }
            
            ZStack{
                TextField("search", text: $search)
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 50.0)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(18)
                    .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 650, trailing: 0))
            
        
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


