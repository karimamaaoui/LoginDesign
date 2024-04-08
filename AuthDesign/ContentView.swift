//
//  ContentView.swift
//  AuthDesign
//
//  Created by karimamaaoui on 4/8/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
      @State private var presentNextView = false
      //@State private var nexView: ViewStack = .login
        
        var body: some View {
            //fel ios 16 fama NavigationStack
            NavigationView {
                VStack {
                    Image("work-from-home")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 370, height: 300)
                        .padding(.top,24)
                    Spacer()
                    Text("Discover You Dream Job Here")
                        .font(.system(size: 35 , weight:.bold))
                        .multilineTextAlignment(.center).foregroundColor(Color("primaryBlue")).padding(.bottom, 8)
                    Text("Explore all the existing jbo roles based on your interst and study major").font(.system(size: 14 , weight:.regular)).multilineTextAlignment(.center).foregroundColor(.black)
                        
                    Spacer()
                    HStack (spacing: 12){
                        /*
                        Button(action: {
                            nextView = .login
                            presentNextView.toggle()
                        } ,label: {
                            Text("Login").font(.system(size: 20, weight: .semibold)).foregroundColor(.red)
                        })*/

                        
                         NavigationLink(destination: LoginView()){
                        
                             Text("Login").font(.system(size: 20, weight: .semibold)).foregroundColor(.white)
                        }
                            .frame(width: 160, height: 60).background(Color("primaryBlue")).cornerRadius(12)
                        
                             NavigationLink(destination: RegisterView()){
                                                    Text("Register").font(.system(size: 20, weight: .semibold)).foregroundColor(.black)
                             }
                        .frame(width: 160, height: 60)
                    }
                    
                    Spacer()
                 
                    
                    }
                .padding()
                .navigationBarHidden(true)
                    //.navigationDestination(isPresented: $presentNextView{Text("NextView")})
                    /*.navigationDestination(isPresented: $presentNextView){
                        switch nextView {
                        case .login:
                            LoginView()
                        case .register:
                            RegisterView()
                        }
                }*/
                            
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
