//
//  DetailView.swift
//  ProgrammaticNavigation
//
//  Created by Anil Solanki on 11/03/23.
//

import SwiftUI

struct DetailView: View {
	let str: String
    var body: some View {
		Text("I am row \(str)")
			.font(.largeTitle)
			.navigationTitle("DetailView")
			.navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView(str:"1")
    }
}
