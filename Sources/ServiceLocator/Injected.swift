//
//  Injected.swift
//  
//
//  Created by Андрей on 30.07.2022.
//

import Foundation

@propertyWrapper
struct Injected<Service: AnyObject> {
	
	private var service: Service?
	private weak var serviceLocator: ServiceLocator? = Configurator.shared.serviceLocator
	
	var wrappedValue: Service? {
		mutating get {
			if service == nil {
				self.service = serviceLocator?.getService(by: Service.self)
			}
			return service
		}
		mutating set {
			self.service = newValue
		}
	}
	
	var projectedValue: Injected<Service> {
		get { self }
		mutating set { self = newValue }
	}
	
	
	
	
}
