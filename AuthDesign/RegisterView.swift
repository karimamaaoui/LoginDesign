//
//  RegisterView.swift
//  AuthDesign
//
//  Created by karimamaaoui on 4/8/24.
//  Copyright © 2024 karimamaaoui. All rights reserved.
//

import SwiftUI


struct RegisterView: View {
       @State private var emailText = ""
       @State private var passwordText = ""
       @State private var usernameText = ""

        //@FocusState private var focusedField: FocusedField?
        //equivalent de focusState
        @State private var isTextFieldFocused = false
        
        @State private var isValidEmail = true
        @State private var isValidPassword = true
        
        var body: some View {
            //NavigationStack
            NavigationView {
                VStack {
                    Text("Create Account")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color("primaryBlue"))
                        .padding(.bottom)
                        .padding(.top ,48)
                    
                    Text("Create an account so you can explore all the existing jobs")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center).padding(.bottom , 80)
                    
                    TextField("Username", text: $usernameText)
                    .padding()
                    .background(Color("secondaryBlue"))
                    .cornerRadius(12)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            //.stroke(Color(isValidEmail ? "primaryBlue" : "secondaryBlue"), lineWidth: 3)
                    ).padding(.horizontal)
                    
                    TextField("Email", text: $emailText)
                                       .padding()
                                       .background(Color("secondaryBlue"))
                                       .cornerRadius(12)
                                       .background(
                                           RoundedRectangle(cornerRadius: 12)
                                               //.stroke(Color(isValidEmail ? "primaryBlue" : "secondaryBlue"), lineWidth: 3)
                    ).padding(.horizontal).padding(.top)
                    
                    SecureField("Passowrd" , text: $passwordText)
                        .padding()
                        .background(Color("secondaryBlue"))
                        .cornerRadius(12)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                        
                            //.stroke(!isValidPassword ? .red :focusedField ==.passowrd ? Color("primaryBlue"): .white , lineWidth: 3)
                                   )
                        .padding(.horizontal)
                        .padding(.top)
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
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ , label: {
                    Text("Sign up")
                        .foregroundColor(.white)
                        .font(.system(size: 20 , weight: .semibold))
                })
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(Color("primaryBlue"))
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ , label: {
                    Text("Already have an account")
                        .foregroundColor(Color("gray"))
                        .font(.system(size: 20 , weight: .semibold))
                    
                })
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(12)
                    .padding()
                    
                    BottomView(googleAction: {}, facebookAction: {}, appleAction: {})
                    Spacer()
                    
                }
            }
        }
    }

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}



