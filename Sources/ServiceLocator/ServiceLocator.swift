final class ServiceLocator {
	
	private lazy var services: [String: AnyObject] = .init()
	
	func addService<T: AnyObject>(service: T) {
		let key = String(describing: T.self)
		if services[key] == nil {
			services[key] = service
		}
	}
	
	func getService<T: AnyObject>(by type: T.Type) -> T? {
		services[String(describing: type)] as? T
	}
	
}
