import SwiftUI
import SwiftData

@main
struct AmaZoneWarehouseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Product.self, MovementRecord.self])
    }
}
