import Foundation

struct SignUpData: Codable {
    var notice: SignUpDataStatus
}
struct SignUpDataStatus: Codable {
    var answer: String
}
