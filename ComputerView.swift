//
//  Created by Goojoob.dev on 19/10/21.
//

import SwiftUI

struct ComputerView: View {
    @State private var computers: [Computer] = []
    
    var body: some View {
            
        List {
            ForEach(computers) { computer in
                VStack {
                    Text(computer.platform)
                    Text(computer.os)
                }
            }
        }
        .task {
            do {
                computers = try await getNetworkData()
            } catch let error {
                fatalError("\(error)")
            }
        }
        
    }
}

struct ComputerView_Previews: PreviewProvider {
    static var previews: some View {
        ComputerView()
    }
}
