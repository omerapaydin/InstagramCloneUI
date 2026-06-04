import SwiftUI

struct ProfileView: View {

    let items = Array(1...9)

    var body: some View {
        ScrollView {

            VStack(spacing: 15) {

                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)

                Text("@rootuser")
                    .font(.title2)
                    .bold()

                Text("iOS Developer")
                    .foregroundColor(.gray)

                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]) {
                    ForEach(items, id: \.self) { _ in
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 120)
                    }
                }

            }
            .padding()
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
