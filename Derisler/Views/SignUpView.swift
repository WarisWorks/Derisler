//
//  SignUpView.swift
//  Derisler
//
//  Created by Waris on 2023/03/03.
//

import SwiftUI

struct SignUpView: View {
    enum Field: Hashable{
        case email
        case password
    }
    
    @State var email = ""
    @State var password = ""
    @FocusState var focusField: Field?
    @State var circleY: CGFloat = 120
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 16) {
            Text("تىزىملىتىش")
                .font(.custom(tuztom, size: 25))
            Text("ئەڭ يېڭى دەرىسلەرنى ئۆگىنەي دىسڭىز ئەپىمىزگە تىزىملىتىڭ.")
                .font(.custom(alkatip, size: 18))
                .multilineTextAlignment(.trailing)
            TextField("ئېلخەت", text: $email)
                .inputStyle(icon: "mail")
                .font(.custom(mainfont, size: 16))
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .focused($focusField, equals: .email)
                .shadow(color: focusField == .email ? .primary.opacity(0.3) : .clear, radius: 10, x: 0, y: 3)
            SecureField("مەخپي نومۇر", text: $password)
                .font(.custom(mainfont, size: 16))
                .inputStyle(icon: "lock")
                .textContentType(.password)
                .focused($focusField, equals: .password)
                .shadow(color: focusField == .password ? .primary.opacity(0.3) : .clear, radius: 10, x: 0, y: 3)

            Button{} label: {
                Text("ئاكونت قۇرۇش")
                    .font(.custom(tuztom, size: 18))
                    .frame(maxWidth: .infinity)
            }
            .font(.headline)
            .blendMode(.overlay)
            .buttonStyle(.angular)
            .tint(.accentColor)
            .controlSize(.large)
            
            Group {
                Text("بۇ يەرنى چېكىپ __ئاكونت__ قۇرۇڭ,تېخىمۇ كۆپ ئۇچۇرغا ئىگە بولماقچى بولسىڭىز بېتىمىزگە[كىرىڭ](https://www.applirim.com)")
                    .font(.custom(alkatip, size: 14))
                    .foregroundColor(.secondary)
                  //  .accentColor(.secondary)
                .multilineTextAlignment(.trailing)
            
            Divider()
            HStack {
                
                 Text("**تىزىملىتىڭ**")
                Button{  }label: {
                    Text("ئاكونتىڭىز بارمۇ ئۇنداقتا")
                }
                  
            }
            .font(.custom(alkatip, size: 16))
          //  .foregroundColor(.secondary)
           // .accentColor(.secondary)
            }
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .background(
            Circle()
                .fill(.blue)
                .frame(width: 68, height: 68)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(y: circleY)
        )
        .strokeStyle(cornerRadius: 30)
        .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y: 30)
        .padding(20)
        .background(
            Image("Blob 1").offset(x: 200, y: -100)
        )
        .onChange(of: focusField) { value in
            withAnimation {
                if value == .email {
                    circleY = 120
                } else {
                    circleY = 190
                }
            }
         
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            SignUpView()
        }
    }
}
