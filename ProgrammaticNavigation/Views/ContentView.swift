//
//  ContentView.swift
//  ProgrammaticNavigation
//
//  Created by Anil Solanki on 11/03/23.
//

import SwiftUI

struct ContentView: View {

	@StateObject var router = NavRouter()

    var body: some View {
		NavigationStack(path: $router.path) {
			VStack {
				Button(action: actionShowList) {
					Label("Show List", systemImage: "list.bullet")
				}
			}
			.navigationTitle("Root View")
			.navigationDestination(for: ViewDestination.self) { destination in
				Group {
					switch destination {
					case .ListView:
						ListView()
					case .OtherView(let str):
						OtherView(str: str)
					case .DetailView(let str):
						DetailView(str: str)
					}
				}
				.environmentObject(router)

			}
		}
    }

	private func actionShowList() {
		self.router.pushView(ViewDestination.ListView)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
