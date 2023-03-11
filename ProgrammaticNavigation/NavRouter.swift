//
//  NavRouter.swift
//  ProgrammaticNavigation
//
//  Created by Anil Solanki on 11/03/23.
//

import SwiftUI

final class NavRouter : ObservableObject {

	@Published var path = NavigationPath()

	public func pushView(_ destination: ViewDestination) {
		self.path.append(destination)
	}
}
