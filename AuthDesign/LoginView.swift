//
//  LoginView.swift
//  AuthDesign
//
//  Created by karimamaaoui on 4/8/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI

enum FocusedField {
    case email
    case passowrd
}


struct LoginView: View {
    @State private var emailText = ""
    @State private var passwordText = ""

    //@FocusState private var focusedField: FocusedField?
    //equivalent de focusState
    @State private var isTextFieldFocused = false
    
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    
    var body: some View {
        //NavigationStack
        NavigationView {
            VStack {
                Text("Login here")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(Color("primaryBlue"))
                    .padding(.bottom)
                
                Text("Welcome back you've been missed!")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center).padding(.bottom , 80)
                
                TextField("Email", text: $emailText)
                .padding()
                .background(Color("secondaryBlue"))
                .cornerRadius(12)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        //.stroke(Color(isValidEmail ? "primaryBlue" : "secondaryBlue"), lineWidth: 3)
                ).padding(.horizontal)
                SecureField("Passowrd" , text: $passwordText)
                    .padding()
                    .background(Color("secondaryBlue"))
                    .cornerRadius(12)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                    
                        //.stroke(!isValidPassword ? .red :focusedField ==.passowrd ? Color("primaryBlue"): .white , lineWidth: 3)
                               )
                    .padding(.horizontal)
                /*.onChange(of: emailText) {
                        newValue in isValidEmail = Validator.validateEmail(newValue)
                    }*/
                    //.focused(focusedField, equals: .email)
            
            /*if(!isValidEmail){
                HStack{
                    Text("Your email is not valid").foregroundColor(.red).padding(.leading)
                    Spacer()
                }
            }*/
            
            HStack {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ , label: {
                    Text("Forgot password?").foregroundColor(Color("primaryBlue")).font(.system(size: 14 , weight: .semibold))
                })
            }
            .padding(.trailing)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ , label: {
                Text("Sign in").foregroundColor(.white).font(.system(size: 20 , weight: .semibold))
            })
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(Color("primaryBlue"))
                .cornerRadius(12)
                .padding(.horizontal)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ , label: {
                Text("Create new account")
                    .foregroundColor(Color("gray"))
                    .font(.system(size: 20 , weight: .semibold))
                
            })
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .cornerRadius(12)
                .padding()
                
                BottomView(googleAction: {}, facebookAction: {}, appleAction: {})
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct BottomView: View {
    var googleAction: () -> Void
    var facebookAction: () -> Void
    var appleAction: () -> Void
    
    var body: some View {
        VStack{
            Text("Or continue with")
                .font(.system(size: 14 , weight: .semibold))
                .foregroundColor(Color("primaryBlue"))
                .padding(.bottom)
           HStack {
               Button(action: googleAction) {
                   Image("google-logo")
                }.iconButtonStyle
               Button(action: facebookAction) {
                   Image("facebook-logo")
            }.iconButtonStyle
               Button(action: appleAction) {
                   Image("apple-logo")
               }.iconButtonStyle
               
           }.buttonStyle(PlainButtonStyle())
        }
    }
}


extension View {
    var iconButtonStyle: some View {
        self
        .padding()
        .background(Color("lightGray"))
        .cornerRadius(8)
    }
}
