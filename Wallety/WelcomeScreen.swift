import SwiftUI

struct WelcomeScreen: View {
    @AppStorage("isNewUser") var isNewUser: Bool = true

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                Text("Wallety")
                    .font(.custom("BalooThambi-Regular", size: 40))
                    .foregroundColor(.white)
                    .padding()

                Spacer()

                NavigationLink(destination: RegistrationScreen(), isActive: $isNewUser) {
                    Text("Create an account")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                NavigationLink(destination: HomeScreen(), isActive: .constant(!isNewUser)) {
                    Text("Already have an account? Log in")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                Spacer()
            }
        }
        .onTapGesture {
            // Обработка нажатия для перехода на следующий экран
            isNewUser = false
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
