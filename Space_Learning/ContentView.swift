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
                    

                    .padding(EdgeInsets(top: 180, leading: 20.0, bottom: 0, trailing: 20.0))
                   
                    

                    
                    
                    
                    
                    
                    
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
    
    let icons=[
            "house.fill",
            "book.closed.fill",
            "graduationcap.fill",
            "square.grid.2x2.fill"
        ]

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
                                .font(.title2.weight(.bold))
                                
                            
                            Text("Enroll Now")
                                .padding(8)
                                .font(.title3.weight(.bold))
//                                .fontWeight(.bold)
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
                            .font(.title2.weight(.semibold))
//                            .fontWeight(.bold)
                            
                        
                        Text("Enroll Now")
                            .padding(8)
                            .font(.title3.weight(.semibold))
                           
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
                            .font(.title2.weight(.semibold))
                            
                        
                        Text("Enroll Now")
                            .padding(8)
                            .font(.title3.weight(.semibold))
                            
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
                        .font(.body.weight(.semibold))
                        .foregroundColor(.white)
                        .background(purple1)
                        .cornerRadius(20)
                        
                        
                    
                    Text("Popular")
                        .padding(20)
                        .frame(maxWidth: 110,maxHeight: 40)
                        .font(.body.weight(.semibold))
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
                        .font(.body.weight(.semibold))
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
                NavigationLink(destination:CourseDetails()){
                    VStack{
                        HStack{
                            //yello texts spaces
                            Image("html")
                                .padding(EdgeInsets(top: 0, leading: -90, bottom: 0, trailing: 0))
                            
                            VStack(alignment:.leading){
                                Text("HTML Basics")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                Text("30 Lessons")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .opacity(0.5)
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("4.8")
                                }
                                .font(.system(size: 12).weight(.semibold))
                                
                                    
                            }
                            
                            
                            .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                            
                            Text("Free")
                                .foregroundColor(purple1)
                                .fontWeight(.semibold)
                                .padding(EdgeInsets(top: 0, leading:100, bottom: 0, trailing: 0))
                        }
                        .padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 0))
                    }
                }
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: 97)
                .background(.white)
                
                
                
                
            }
            
            
            .cornerRadius(10)
            .shadow(color: Color("darkshadow"), radius: 10, x: 8, y: 8)
            
            
                .padding(EdgeInsets(top: 290, leading: 20, bottom: 0, trailing: 20))
            VStack{
                NavigationLink(destination:CourseDetails2()){
                    VStack{
                        HStack{
                            //yello texts spaces
                            Image("css")
                                .padding(EdgeInsets(top: 0, leading: -90, bottom: 0, trailing: 0))
                            
                            VStack(alignment:.leading){
                                Text("CSS Fundementals")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                Text("30 Lessons")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                    .opacity(0.5)
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("4.1")
                                }
                                .font(.system(size: 12).weight(.semibold))
                                
                                    
                            }
                            
                            
                            .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                            
                            Text("$18.99")
                                .foregroundColor(purple1)
                                .fontWeight(.semibold)
                                .padding(EdgeInsets(top: 0, leading:40, bottom: 0, trailing: 0))
                        }
                        .padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 0))
                    }
                }
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: 97)
                .background(.white)
                
                
                
                
            }
            .cornerRadius(10)
            .shadow(color: Color("darkshadow"), radius: 10, x: 8, y: 8)
            
                .padding(EdgeInsets(top: 530, leading: 20, bottom: 0, trailing: 20))
            
            ZStack{
                HStack{
                    ForEach(0..<4, id:\.self){
                        number in
                        Spacer(minLength: 5)
                        Button(action:{
                            
                        },label:{Image(systemName: icons[number])
                                .font(.system(size:32))
                                .foregroundColor(purple1)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
                                
                        })
                    }
                }
                .frame(width: 400)
                .frame(height: 80)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: Color("darkshadow"), radius: 10, x: 8, y: 8)
            }
            
            
            .padding(EdgeInsets(top: 780, leading: 20, bottom: 0, trailing: 20))//35
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

import AVKit
struct CourseDetails:View{
  
    var body: some View{
        
        let purple1 : Color = Color(red: 0.294, green: 0.451, blue: 1)
        ZStack{
            VStack{
                Image("cimage")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 510, trailing: 0))
            }
            
            VStack{
                HStack{
                    Text("HTML Basics")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(EdgeInsets(top: 0, leading: -140, bottom: 0, trailing: 0))
                    
                    Button(action:{
                        
                    },label:{Image(systemName: "heart.fill")
                            .font(.title2)
                            .foregroundColor(purple1)
                            .frame(maxWidth: 40,maxHeight: 40)
                            .background(Color("purpback"))
                            .cornerRadius(8)
                            .padding(EdgeInsets(top: 0, leading: 170, bottom: 0, trailing: 0))
                            
                    })
                    
//                    Image(systemName: "heart.fill")
//                        .font(.title2)
//                        .foregroundColor(purple1)
//                        .frame(maxWidth: 40,maxHeight: 40)
//                        .background(Color("purpback"))
//                        .cornerRadius(8)
//                        .padding(EdgeInsets(top: 0, leading: 170, bottom: 0, trailing: 0))
                    
                    
                    
                }
                .padding(EdgeInsets(top: 0, leading: 130, bottom: 160, trailing: 0))
            }
            
            VStack{
                Text("Getting started is simple. We’ll give you everything you need to learn to code. Starting is easy. We’ll help you write your first line of code in minutes. Beginner-Friendly.")
                    .padding(25)
                    .opacity(0.5)
            }
            
            VStack{
                HStack{
                    Image("profile")
                        .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: 0))
                    
                    VStack(alignment:.leading){
                        Text("Jhon Doe")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("Senior Software Engineer")
                            .opacity(0.5)
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    
                }
            }
            .padding(EdgeInsets(top: 220, leading: 0, bottom: 0, trailing: 90))
            
            VStack(alignment:.leading){
                HStack{
                    Image(systemName: "calendar")
                        .foregroundColor(purple1)
                    Text("December 01 2022")
                        .opacity(0.5)
                        
                }
                
                HStack{
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(purple1)
                    Text("18 Hours")
                        .opacity(0.5)
                        
                }
            }
            .padding(EdgeInsets(top: 360, leading: 0, bottom: 0, trailing: 210))
            
            VStack(alignment:.leading){
                VStack{
                    Text("People Enrolled")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                
                VStack{
                    HStack{
                        Image("enroll")
                        Text("86 People Enrolled")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .opacity(0.5)
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                    }
                    
                    
                }
                
                
                
            }
            .padding(EdgeInsets(top: 530, leading: 0, bottom: 0, trailing: 0))
            
            VStack{
                HStack{
                    VStack(alignment:.leading){
                        Text("Starting in:")
                            .foregroundColor(.black)
                            .opacity(0.5)
                            .font(.body.weight(.semibold))
                            
                        Text("3 Days")
                            .foregroundColor(purple1)
                            .fontWeight(.semibold)
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    HStack{
                        NavigationLink(destination:CourseContent()){
                            Text("Enroll Now")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width:130,height: 47)
                                .background(purple1)
                                .cornerRadius(15)
                                .padding(EdgeInsets(top: 0, leading: 120, bottom: 0, trailing: 0))
                        }
                    }
                }
                
                
            }
            .frame(maxWidth: .infinity,maxHeight: 80)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: Color("darkshadow"), radius: 10, x: 8, y: 15)
            .padding(EdgeInsets(top: 720, leading: 20, bottom: 0, trailing: 20))
            
            
            
            
        }
        .ignoresSafeArea(.all)
        
    }
    
}

struct CourseDetails2:View{
    var body:some View{
        Text("CSS Course")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


