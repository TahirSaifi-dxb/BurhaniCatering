//
//  AccountView.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct AccountView: View {
    @StateObject var acviewModel =  AccountViewModel()
    @FocusState private var focusedtextfield: FormTextField?
    
    enum FormTextField {
        case firstName, LastName, Email
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Personal Details")){
                    TextField("First Name", text: $acviewModel.user.FirstName)
                        .focused($focusedtextfield, equals: .firstName)
                        .onSubmit {focusedtextfield = .LastName}
                        .submitLabel(.next)
                    TextField("Last Name", text: $acviewModel.user.LastName)
                        .focused($focusedtextfield, equals: .LastName)
                        .onSubmit {focusedtextfield = .Email}
                        .submitLabel(.next)
                    TextField("Email", text: $acviewModel.user.Email)
                        .focused($focusedtextfield, equals: .Email)
                        .onSubmit {focusedtextfield = nil}
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Date of Birth", selection: $acviewModel.user.selectedDate, displayedComponents: .date)
                    Button{
                        acviewModel.saveChanges()
                    }label:{
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $acviewModel.user.extraNapkins )
                    Toggle("Frequent Refills", isOn: $acviewModel.user.frequentrefills )
                }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
            }
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Button("Dismiss"){
                        focusedtextfield = nil
                    }
                }
            }
                .navigationTitle("💼 Account Details")
                
        }.onAppear{
            acviewModel.retrieveUser()
        }
        .alert(item: $acviewModel.alertItem){
            alertitem in Alert(title: alertitem.title, message: alertitem.message, dismissButton: alertitem.dismissButton)
        }
    }
}


