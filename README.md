# AsyncAwait

Example using Async/Await to recover data from online JSON

<br/>

## JSON Online

https://random-data-api.com/api/computer/random_computer?size=4

<br/>

## Created with 🛠️

* [XCode 13](https://developer.apple.com/xcode/)
* [Swift 5.5.1](https://swift.org/)
* [SwiftUI 3](https://developer.apple.com/xcode/swiftui/)

<br/>

### MODEL

```json
{
  "id": 4749,
  "uid": "92933cda-5396-4ab4-ae72-4b61b1651efb",
  "platform": "macOS",
  "type": "workstation",
  "os": "High Sierra (10.13)",
  "stack": "Linux, Debian 10.10.3"
}
```

```swift
struct Computer: Identifiable, Codable {
    var id: Int 
    var uid: String
    var platform: String
    var type: String
    var os: String
    var stack: String
}
```
<br/>

### ASYNC/AWAIT

```swift
.task {
    do {
        computers = try await getNetworkData()
    } catch let error {
        fatalError("\(error)")
    }
}
```

```swift
func getNetworkData() async throws -> [Computer]
```
