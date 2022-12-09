//
//  CourseContent.swift
//  Space_Learning
//
//  Created by Devin Fernando on 2022-11-20.
//

import SwiftUI
import AVKit
struct CourseContent: View {
    
    @State private var player = AVPlayer()
    let purple1 : Color = Color(red: 0.294, green: 0.451, blue: 1)
    
    var body: some View {
        ZStack{
            //course image added
            VStack{
                Image("cimage")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 510, trailing: 0))
            }
            
            //course name and share button
            VStack{
                HStack{

                    //html course
                    Text("HTML Basics")
                        .font(.title2.weight(.semibold))
                        
                        .padding(EdgeInsets(top: 0, leading: -140, bottom: 0, trailing: 0))
                    Image(systemName: "arrowshape.turn.up.forward.fill")
                        .font(.title2)
                        .foregroundColor(purple1)
                        .frame(maxWidth: 40,maxHeight: 40)
                        .background(Color("purpback"))
                        .cornerRadius(8)
                        .padding(EdgeInsets(top: 0, leading: 170, bottom: 0, trailing: 0))
                    
                    
                    
                }
                .padding(EdgeInsets(top: 0, leading: 130, bottom: 160, trailing: 0))
            }
            
            ScrollView(.vertical){
                VStack{
                    NavigationLink(destination:VideoOne()){
                        HStack{
                            Image("vplay")
                            
                            Text("01. Introduction")
                                .foregroundColor(.black)
                                .font(.body.weight(.semibold))
                                .padding(EdgeInsets(top: 0, leading: 90, bottom: 0, trailing: 0))
                                //.padding(EdgeInsets(top: 0, leading: 90, bottom: 0, trailing: 0))
                        }
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 120)
                .background(.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                .shadow(color: Color("darkshadow"), radius: 8,x: 8,y: 8)
                
                Spacer(minLength: 20)
                
                VStack{
                    NavigationLink(destination:VideoOne()){
                        HStack{
                            Image("vplay")
                            
                            Text("01. Introduction")
                                .foregroundColor(.black)
                                .font(.body.weight(.semibold))
                                .padding(EdgeInsets(top: 0, leading: 90, bottom: 0, trailing: 0))
                        }
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 97)
                .background(.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                .shadow(color: Color("darkshadow"), radius: 8,x: 8,y: 8)
                
                Spacer(minLength: 20)
                
                VStack{
                    NavigationLink(destination:VideoOne()){
                        HStack{
                            Image("vplay")
                            
                            Text("01. Introduction")
                                .foregroundColor(.black)
                                .font(.body.weight(.semibold))
                                .padding(EdgeInsets(top: 0, leading: 90, bottom: 0, trailing: 0))
                        }
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 97)
                .background(.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                .shadow(color: Color("darkshadow"), radius: 8,x: 8,y: 8)
                
                Spacer(minLength: 20)
                
                VStack{
                    NavigationLink(destination:VideoOne()){
                        HStack{
                            Image("vplay")
                            
                            Text("01. Introduction")
                                .foregroundColor(.black)
                                .font(.body.weight(.semibold))
                                .padding(EdgeInsets(top: 0, leading: 90, bottom: 0, trailing: 0))
                        }
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 97)
                .background(.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                .shadow(color: Color("darkshadow"), radius: 8,x: 8,y: 8)
                
                Spacer(minLength: 20)
                
                VStack{
                    NavigationLink(destination:VideoOne()){
                        HStack{
                            Image("iplay")
                            //content need be added
                            
                            Text("01. Introduction")
                                .foregroundColor(.black)
                                .font(.body.weight(.semibold))
                                .padding(EdgeInsets(top: 0, leading: 90, bottom: 0, trailing: 0))
                        }
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 97)
                .background(.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 20.0, bottom: 0, trailing: 20.0))
                .shadow(color: Color("darkshadow"), radius: 8,x: 8,y: 8)
            }
            .padding(EdgeInsets(top: 400, leading: 0, bottom: 0, trailing: 0))
            
            
            
           
            
            
            
        }
    }
}





struct CourseContent_Previews: PreviewProvider {
    static var previews: some View {
        CourseContent()
    }
}


struct VideoOne :View{
    var body:some View{
        VStack{
            VideoPlayer(player: AVPlayer(url:Bundle.main.url(forResource: "videoplayback", withExtension: "mp4")!))
        }
    }
}
