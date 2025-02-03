
import SwiftUI

struct UdemyCourseView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                AppBarView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }.padding(
                .horizontal, 20
            )
        }
    }
}

#Preview {
    UdemyCourseView()
}
