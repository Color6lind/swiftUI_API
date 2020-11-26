import Foundation

struct LogOutData: Codable {
    var notice: LogOutText
}
struct LogOutText: Codable {
    var text: String
}
