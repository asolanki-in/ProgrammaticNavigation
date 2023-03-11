//
//  OtherView.swift
//  ProgrammaticNavigation
//
//  Created by Anil Solanki on 11/03/23.
//

import SwiftUI

struct OtherView: View {

	let str: String

    var body: some View {
		Text(str)
			.font(.largeTitle)
			.navigationTitle("Other View")
			.navigationBarTitleDisplayMode(.inline)
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView(str: "")
    }
}
