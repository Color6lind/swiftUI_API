import Foundation

struct LogInData: Codable {
    var notice: LogInToken
}
struct LogInToken: Codable {
    var token: Int
}
