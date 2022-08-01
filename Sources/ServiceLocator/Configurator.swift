//
//  Configurator.swift
//  
//
//  Created by Андрей on 30.07.2022.
//

import Foundation

public final class Configurator {
	
	public static let shared = Configurator()
	let serviceLocator = ServiceLocator()
	
	private init() {}
	
	public func registerService<T: AnyObject>(_ service: T) {
		serviceLocator.addService(service: service)
	}
	
}
