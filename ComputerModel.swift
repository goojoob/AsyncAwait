//
//  Created by Goojoob.dev on 19/10/21.
//

import Foundation

struct Computer: Identifiable, Codable {
    var id: Int 
    var uid: String
    var platform: String
    var type: String
    var os: String
    var stack: String
}