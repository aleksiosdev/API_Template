//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import Alamofire

extension API {
	enum ___VARIABLE_name:identifier___ {
		static var mobileUrl: String { return API.mobileUrl + "___VARIABLE_name:identifier___/" }
		case ___VARIABLE_path:identifier___
	}
}

extension API.___VARIABLE_name:identifier___: APIMethodProtocol {
	var method: HTTPMethod {
		switch self {
		case .___VARIABLE_path:identifier___:
			return .get
		}
	}

	var path: String {
		switch self {
		case .___VARIABLE_path:identifier___:
			return type(of: self).mobileUrl + "\(Paths.___VARIABLE_path:identifier___.rawValue)"
		}

	}

	var params: [String : Any]? {
		switch self {
		case .___VARIABLE_path:identifier___:
			return [:]
		}
	}
}

private extension API.___VARIABLE_name:identifier___ {
	enum Paths: String {
		case ___VARIABLE_path:identifier___
	}

	enum Keys: String {
		case key
	}
}
