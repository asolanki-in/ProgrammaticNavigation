//
//  ListView.swift
//  ProgrammaticNavigation
//
//  Created by Anil Solanki on 11/03/23.
//

import SwiftUI

struct ListView: View {

	@EnvironmentObject var router : NavRouter

	let arr = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

    var body: some View {
		List(arr, id: \.self) { str in
			NavigationLink(value: ViewDestination.DetailView(str)) {
				VStack(alignment: .leading, spacing: 10) {
					Text("I am row \(str)").font(.title)
					HStack {
						aButton(str: "Page 1")
						aButton(str: "Page 2")
						aButton(str: "Page 3")
					}

				}
				.padding()
			}
		}
		.navigationTitle("List View")
		.navigationBarTitleDisplayMode(.inline)
		.listStyle(PlainListStyle())
    }

	private func aButton(str: String) -> some View {
		Button(action: {
			showOtherView(str)
		}) {
			Text(str)
		}
		.buttonStyle(.bordered)
		.buttonStyle(PlainButtonStyle())
	}

	private func showOtherView(_ str: String) {
		self.router.pushView(ViewDestination.OtherView(str))
	}
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
