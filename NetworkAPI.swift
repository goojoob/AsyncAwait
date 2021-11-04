//
//  Created by Goojoob.dev on 19/10/21.
//

import Foundation

func getNetworkData() async throws -> [Computer] {
    guard let url = URL(string: "https://random-data-api.com/api/computer/random_computer?size=4") else {
        fatalError("Missing URL")
    }

    let urlRequest = URLRequest(url: url)
    let (data, response) = try await URLSession.shared.data(from: urlRequest.url!)

    guard (response as? HTTPURLResponse)?.statusCode == 200 else {
        fatalError("Error fetching data")
    }

    let decodedComputers = try JSONDecoder().decode([Computer].self, from: data)
    return decodedComputers
}
