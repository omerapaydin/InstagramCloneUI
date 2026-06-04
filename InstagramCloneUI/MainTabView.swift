import SwiftUI



struct MainTabView: View {

    let posts = [
        Post(username: "root", image: "photo", caption: "SwiftUI "),
        Post(username: "dev", image: "photo", caption: "Instagram Clone"),
        Post(username: "ios", image: "photo", caption: "Hello world")
    ]

    var body: some View {
        NavigationStack {
            ScrollView {

                ForEach(posts) { post in
                    VStack(alignment: .leading, spacing: 10) {

                        // HEADER
                        HStack {
                            Circle()
                                .frame(width: 35, height: 35)

                            Text(post.username)
                                .fontWeight(.bold)

                            Spacer()

                            Image(systemName: "ellipsis")
                        }

                        // IMAGE
                        Image(systemName: post.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 250)
                            .background(Color.gray.opacity(0.2))

                        // ❤️ 💬 📤 ACTION BAR
                        HStack(spacing: 15) {

                            Button {
                                // like action
                            } label: {
                                Image(systemName: "heart")
                            }

                            Button {
                                // comment action
                            } label: {
                                Image(systemName: "message")
                            }

                            Button {
                                // share action
                            } label: {
                                Image(systemName: "paperplane")
                            }

                            Spacer()

                            Image(systemName: "bookmark")
                        }
                        .font(.system(size: 20))
                        .foregroundColor(.black)

                        // CAPTION
                        Text(post.caption)
                            .font(.subheadline)

                    }
                    .padding()
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    MainTabView()
}
