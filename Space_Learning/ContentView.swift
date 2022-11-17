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
          
                VStack{
                    Image("smallicon")
                        .padding(EdgeInsets(top:0, leading: 0, bottom:790, trailing: 350))
                }
                
            
            
                VStack{
                    TextField("search", text: $search)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 50.0)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(18)
                        .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 650, trailing: 20.0))
                }
            
            ScrollView(.horizontal){
                HStack(spacing:20){
                    HStack{
                        
                            Image("reactcard")
                                
                                .frame( alignment: .leading)
                                .padding(EdgeInsets(top: 0, leading: -50, bottom: 0, trailing: 0))

     
                        
                        VStack(alignment:.leading){
                            Text("Learn \nReact JS")
                                .lineLimit(2)
                                .fontWeight(.bold)
                                
                            
                            Text("Enroll Now")
                                .padding(8)
                                .font(.title3)
                                .fontWeight(.bold)
                                .background(Color.yellow)
                                .cornerRadius(18)
                                
                                
                                
                        }
                        .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                        
                        
                    }
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(width: 370, height: 178)
                    .background(purple1)
                    .cornerRadius(20)
                    
                    HStack{
                        
                        
                        Image("reactcard")
                            
                            .frame( alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: -50, bottom: 0, trailing: 0))

 
                    
                    VStack(alignment:.leading){
                        Text("Learn \nReact JS")
                            .lineLimit(2)
                            .fontWeight(.bold)
                            
                        
                        Text("Enroll Now")
                            .padding(8)
                            .font(.title3)
                            .fontWeight(.bold)
                            .background(Color.yellow)
                            .cornerRadius(18)
                            
                            
                            
                    }
                    .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                    
                    
                        
                            
                    }
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(width: 370, height: 178)
                    .background(purple1)
                    .cornerRadius(20)
                    
                    HStack{
                        Image("reactcard")
                            
                            .frame( alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: -50, bottom: 0, trailing: 0))

 
                    
                    VStack(alignment:.leading){
                        Text("Learn \nReact JS")
                            .lineLimit(2)
                            .fontWeight(.bold)
                            
                        
                        Text("Enroll Now")
                            .padding(8)
                            .font(.title3)
                            .fontWeight(.bold)
                            .background(Color.yellow)
                            .cornerRadius(18)
                            
                            
                            
                    }
                    .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                    }
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(width: 370, height: 178)
                    .background(purple1)
                    .cornerRadius(20)
                }
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                
                
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 310, trailing: 0))
            
            VStack{
                HStack{
                    Text("Trending Courses ")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 130))
                    
                    Text("See all")
                        .foregroundColor(purple1)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            }
            
            VStack{
                //change text to buttons when linking
                HStack(spacing:10){
                    Text("All")
                        .padding(20)
                        .frame(maxWidth: 80,maxHeight: 40)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(purple1)
                        .cornerRadius(20)
                        
                        
                    
                    Text("Popular")
                        .padding(20)
                        .frame(maxWidth: 110,maxHeight: 40)
                        .fontWeight(.semibold)
                        .foregroundColor(purple1)
                        .cornerRadius(20)
                        .overlay(
                                    Capsule(style: .continuous)
                                        .stroke(purple1, style: StrokeStyle(lineWidth: 2))
                                )
                        
                    
                    
                    Text("Newst")
                        .padding(20)
                        .frame(maxWidth: 100,maxHeight: 40)
                        .foregroundColor(purple1)
                        .fontWeight(.semibold)
                        .cornerRadius(20)
                        .overlay(
                                    Capsule(style: .continuous)
                                        .stroke(purple1, style: StrokeStyle(lineWidth: 2))
                                )
                }
                
            }
            .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 60))
            
            //card type courses implemetation
            
            VStack{
                VStack{
                    HStack{
                        //yello texts spaces
                        Image("html")
                            .padding(EdgeInsets(top: 0, leading: -110, bottom: 0, trailing: 0))
                        
                        VStack{
                            Text("HTML Basics")
                            Text("30 Lessons")
                            Text("4.8")
                        }
                        .padding(EdgeInsets(top: 0, leading: -30, bottom: 0, trailing: 0))
                        
                        Text("Free")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 90)
                .background(.yellow)
                
                
                
            }
                .padding(EdgeInsets(top: 250, leading: 20, bottom: 0, trailing: 20))
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


