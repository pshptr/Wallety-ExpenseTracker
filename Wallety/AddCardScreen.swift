import SwiftUI

struct AddCardScreen: View {
    @State private var cardName: String = ""
    @State private var balance: String = ""

    var body: some View {
        VStack {
            Spacer()

            Text("Add a Card")
                .font(.title)
                .padding()

            TextField("Card Name", text: $cardName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Initial Balance", text: $balance)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)

            Button(action: {
                // Обработка нажатия для добавления карты и перехода к следующему экрану
            }) {
                Text("OK")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            Spacer()
        }
        .padding()
        .navigationBarTitle("Add a Card", displayMode: .inline)
    }
}

struct AddCardScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddCardScreen()
    }
}
