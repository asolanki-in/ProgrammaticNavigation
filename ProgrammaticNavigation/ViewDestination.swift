//
//  ViewDestination.swift
//  ProgrammaticNavigation
//
//  Created by Anil Solanki on 11/03/23.
//

import Foundation

enum ViewDestination : Hashable {
	case ListView
	case OtherView(String)
	case DetailView(String)
}
