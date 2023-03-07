//
//  SignInView.swift
//  Derisler
//
//  Created by Waris on 2023/03/07.
//

import SwiftUI

struct SignInView: View {
    enum Field: Hashable{
        case email
        case password
    }
    
    @State var email = ""
    @State var password = ""
    @FocusState var focusField: Field?
    @State var circleY: CGFloat = 120
    @State var emailY: CGFloat = 0
    @State var passwordY: CGFloat = 0
    @State var circleColor: Color = .blue
    @State var appear = [false, false, false]
    @EnvironmentObject var model: Model
    @AppStorage("isLogged") var isLogged = false

    
    var body: some View {
        VStack(alignment: .trailing, spacing: 16) {
            Text("كىرىش")
                .font(.custom(tuztom, size: 25))
                .opacity(appear[0] ? 1 : 0)
                .offset(y: appear[0] ? 0 : 20)
            Text("ئەڭ يېڭى دەرىسلەرنى ئۆگىنەي دىسڭىز ئەپىمىزگە تىزىملىتىڭ.")
                .font(.custom(alkatip, size: 18))
                .multilineTextAlignment(.trailing)
                .opacity(appear[1] ? 1 : 0)
                .offset(y: appear[1] ? 0 : 20)
            Group {
                TextField("ئېلخەت", text: $email)
                    .inputStyle(icon: "mail")
                    .font(.custom(mainfont, size: 16))
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .focused($focusField, equals: .email)
                    .shadow(color: focusField == .email ? .primary.opacity(0.3) : .clear, radius: 10, x: 0, y: 3)
                    .overlay(geometry)
                    .onPreferenceChange(CirclePreferenceKey.self) { value in
                        emailY = value
                        circleY = value
                    }
                SecureField("مەخپي نومۇر", text: $password)
                    .font(.custom(mainfont, size: 16))
                    .inputStyle(icon: "lock")
                    .textContentType(.password)
                    .focused($focusField, equals: .password)
                    .shadow(color: focusField == .password ? .primary.opacity(0.3) : .clear, radius: 10, x: 0, y: 3)
                    .overlay(geometry)
                    .onPreferenceChange(CirclePreferenceKey.self) { value in
                        passwordY = value
                    }
                
                Button{
                    isLogged = true
                } label: {
                    Text("جەزملەشتۈرۈش")
                        .font(.custom(tuztom, size: 18))
                        .frame(maxWidth: .infinity)
                }
                .font(.headline)
                .blendMode(.overlay)
                .buttonStyle(.angular)
                .tint(.accentColor)
                .controlSize(.large)
                .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y: 30)
                
                
                Divider()
                
                HStack {
                    
                    Text("**تىزىملىتىڭ**")
                    Button{
                        model.selectedModal = .signUp
                    }label: {
                        Text("تېخىچە ئاكونتىڭىز يوقمۇ؟")
                    }
                    
                }
                .font(.custom(alkatip, size: 16))
                .foregroundColor(.secondary)
                .accentColor(.secondary)
            }
            .opacity(appear[2] ? 1 : 0)
            .offset(y: appear[2] ? 0 : 20)
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .background(
            Circle()
                .fill(circleColor)
                .frame(width: 68, height: 68)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(y: circleY)
        )
        .coordinateSpace(name: "container")
        .strokeStyle(cornerRadius: 30)
        .onChange(of: focusField) { value in
            withAnimation {
                if value == .email {
                    circleY = emailY
                    circleColor = .blue
                } else {
                    circleY = passwordY
                    circleColor = .red
                }
            }
            
        }
        
        .onAppear{
            withAnimation(.spring().delay(0.1)){
                appear[0] = true
            }
            withAnimation(.spring().delay(0.2)){
                appear[1] = true
            }
            withAnimation(.spring().delay(0.3)){
                appear[2] = true
            }
        }
    }
    
    var geometry: some View{
        GeometryReader { proxy in
            Color.clear.preference(key: CirclePreferenceKey.self, value: proxy.frame(in: .named("container")).minY)
        }
    }
}



struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            SignInView()
                .environmentObject(Model())
        }
        
    }
}
