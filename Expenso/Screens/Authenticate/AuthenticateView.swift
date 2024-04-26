//
//  AuthenticateView.swift
//


import SwiftUI

struct AuthenticateView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @ObservedObject var viewModel: AuthenticationViewModel

    var body: some View {
        NavigationView {
            ZStack {
                Color.primary_color.edgesIgnoringSafeArea(.all)

                VStack {
                    NavigationLink(destination: NavigationLazyView(ExpenseView()), isActive: $viewModel.didAuthenticate) {
                        EmptyView() // Прячем загрузку
                    }

                    Spacer()
                    Image("pie_icon").resizable().frame(width: 120.0, height: 120.0)
                    Spacer()

                    VStack(spacing: 16) {
                        TextView(text: "\(APP_NAME)", type: .body_1).foregroundColor(Color.text_primary_color).padding(.top, 20)

                        TextField("Username", text: $username)
                            .padding()
                            .background(Color.secondary_color)
                            .cornerRadius(4)
                            .padding(.horizontal)

                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.secondary_color)
                            .cornerRadius(4)
                            .padding(.horizontal)

                        Button(action: { viewModel.authenticate(username: username, password: password) }, label: {
                            HStack {
                                Spacer()
                                TextView(text: "Log in", type: .button).foregroundColor(Color.main_color)
                                Spacer()
                            }
                        })
                        .frame(height: 25)
                        .padding()
                        .background(Color.secondary_color)
                        .cornerRadius(4)
                        .foregroundColor(Color.text_primary_color)
                        .accentColor(Color.text_primary_color)
                    }
                    .padding(.horizontal)

                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: { viewModel.authenticate(username: "", password: "") })
 // Запуск аутентификации при появлении
            .navigationBarHidden(true)
        }
        .onAppear(perform: { viewModel.authenticate(username: "", password: "") })
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct AuthenticateView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticateView(viewModel: AuthenticationViewModel())
    }
}
